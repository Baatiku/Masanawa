.class public final Lteam/opay/pay/biometric/BiometricSavePayFragment;
.super Lteam/opay/pay/biometric/Hilt_BiometricSavePayFragment;
.source "BiometricSavePayFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/biometric/BiometricSavePayFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/biometric/Hilt_BiometricSavePayFragment<",
        "Lhc6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J!\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u001b\u0010\u0019\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/biometric/BiometricSavePayFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lhc6;",
        "<init>",
        "()V",
        "",
        "j0",
        "addObserver",
        "l0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "h0",
        "addAction",
        "Lteam/opay/pay/biometric/BiometricSavePayViewModel;",
        "p",
        "Lid8;",
        "i0",
        "()Lteam/opay/pay/biometric/BiometricSavePayViewModel;",
        "viewModel",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "q",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "Lteam/opay/core/settings/SettingsStorage;",
        "r",
        "Lteam/opay/core/settings/SettingsStorage;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "setSettingsStorage",
        "(Lteam/opay/core/settings/SettingsStorage;)V",
        "settingsStorage",
        "s",
        "Companion",
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
.field public static final s:Lteam/opay/pay/biometric/BiometricSavePayFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lteam/opay/core/settings/SettingsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/biometric/BiometricSavePayFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/biometric/BiometricSavePayFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/biometric/BiometricSavePayFragment;->s:Lteam/opay/pay/biometric/BiometricSavePayFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/biometric/BiometricSavePayFragment$1;->INSTANCE:Lteam/opay/pay/biometric/BiometricSavePayFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/biometric/Hilt_BiometricSavePayFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/biometric/BiometricSavePayFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/biometric/BiometricSavePayFragment;->p:Lid8;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->d0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/biometric/BiometricSavePayFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->g0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/biometric/BiometricSavePayFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->c0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->Y(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lteam/opay/pay/home/security/ValidatePaymentPinData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->e0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lteam/opay/pay/home/security/ValidatePaymentPinData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->Z(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->a0(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->k0(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->b0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->f0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->l0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->l0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhc6;

    .line 6
    .line 7
    iget-object v0, v0, Lhc6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lhc6;

    .line 14
    .line 15
    iget-object v1, v1, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lhc6;

    .line 39
    .line 40
    iget-object v0, v0, Lhc6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-direct {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->l0()V

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lmb1;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lmb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lnb1;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lnb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lob1;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lob1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lpb1;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lpb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lteam/opay/pay/biometric/BiometricSavePayFragment$a;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lteam/opay/pay/biometric/BiometricSavePayFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lqb1;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Lqb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lteam/opay/pay/biometric/BiometricSavePayFragment$a;

    .line 104
    .line 105
    invoke-direct {v3, v2}, Lteam/opay/pay/biometric/BiometricSavePayFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static final b0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhc6;

    .line 6
    .line 7
    iget-object p0, p0, Lhc6;->e:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final d0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Unit;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhc6;

    .line 6
    .line 7
    iget-object p0, p0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->n()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final e0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lteam/opay/pay/home/security/ValidatePaymentPinData;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/pin/PinErrorTipDialog;->s:Lteam/opay/pay/pin/PinErrorTipDialog$Companion;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/pin/PinError;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/home/security/ValidatePaymentPinData;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, v2

    .line 14
    :goto_0
    const-string v4, ""

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    move-object v3, v4

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/home/security/ValidatePaymentPinData;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_2
    if-nez v2, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move-object v4, v2

    .line 29
    :goto_1
    const-string p1, "pin"

    .line 30
    .line 31
    invoke-direct {v1, v3, v4, p1}, Lteam/opay/pay/pin/PinError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PinErrorTipDialog$Companion;->a(Lteam/opay/pay/pin/PinError;)Lteam/opay/pay/pin/PinErrorTipDialog;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 2
    .line 3
    new-instance v12, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 4
    .line 5
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Ljava/lang/CharSequence;

    .line 11
    .line 12
    sget p1, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 13
    .line 14
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/16 v10, 0xf1

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, ""

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v1, v12

    .line 29
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v12}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lvb1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lvb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/biometric/BiometricSavePayFragment;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/pay/biometric/BiometricSavePayFragment$addObserver$5$1$1$1;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/biometric/BiometricSavePayFragment$addObserver$5$1$1$1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private final j0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhc6;

    .line 6
    .line 7
    iget-object v0, v0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lhc6;

    .line 21
    .line 22
    iget-object v0, v0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 23
    .line 24
    new-instance v1, Lrb1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lrb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lteam/opay/pay/account/KeyBoardHelper;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lhc6;

    .line 39
    .line 40
    iget-object v1, v1, Lhc6;->d:Lt1b;

    .line 41
    .line 42
    iget-object v3, v1, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 43
    .line 44
    const-string v1, "keyBoardView"

    .line 45
    .line 46
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lhc6;

    .line 54
    .line 55
    iget-object v1, v1, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 56
    .line 57
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lhc6;

    .line 66
    .line 67
    iget-object v1, v1, Lhc6;->d:Lt1b;

    .line 68
    .line 69
    iget-object v5, v1, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lhc6;

    .line 76
    .line 77
    iget-object v1, v1, Lhc6;->d:Lt1b;

    .line 78
    .line 79
    iget-object v6, v1, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lhc6;

    .line 86
    .line 87
    iget-object v7, v1, Lhc6;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    .line 89
    const/16 v10, 0x60

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    move-object v2, v0

    .line 95
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lteam/opay/pay/biometric/BiometricSavePayFragment;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lhc6;

    .line 105
    .line 106
    iget-object v1, v1, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lteam/opay/core/android/views/CodeInputField;->m(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static final k0(Lteam/opay/pay/biometric/BiometricSavePayFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhc6;

    .line 6
    .line 7
    iget-object p0, p0, Lhc6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v0, "verifyError"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private final l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricSavePayFragment;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lhc6;

    .line 17
    .line 18
    iget-object v1, v1, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/biometric/BiometricSavePayViewModel;->x(Lag8;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final addAction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhc6;

    .line 6
    .line 7
    iget-object v0, v0, Lhc6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const-string v1, "confirm"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lsb1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lsb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lhc6;

    .line 27
    .line 28
    iget-object v0, v0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setHideInput(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lhc6;

    .line 39
    .line 40
    iget-object v0, v0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 41
    .line 42
    new-instance v1, Ltb1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Ltb1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnActionDone(Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lhc6;

    .line 55
    .line 56
    iget-object v0, v0, Lhc6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 57
    .line 58
    new-instance v1, Lub1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lub1;-><init>(Lteam/opay/pay/biometric/BiometricSavePayFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final h0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final i0()Lteam/opay/pay/biometric/BiometricSavePayViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricSavePayFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/biometric/BiometricSavePayViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->j0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->addAction()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/biometric/BiometricSavePayFragment;->addObserver()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
