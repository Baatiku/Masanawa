.class public final Lteam/opay/pay/home/security/BiometricSettingClient;
.super Ljava/lang/Object;
.source "BiometricSettingClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/BiometricSettingClient$a;,
        Lteam/opay/pay/home/security/BiometricSettingClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 y2\u00020\u0001:\u0002z<B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0019\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0002\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0002\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0019\u0010\u0011\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J+\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000f2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u0017\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u0017\u0010%\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'H\u0007\u00a2\u0006\u0004\u0008(\u0010)J\'\u0010-\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u00172\u0008\u0008\u0002\u0010,\u001a\u00020\u0017\u00a2\u0006\u0004\u0008-\u0010.J!\u00102\u001a\u00020\u000c2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u000c0/\u00a2\u0006\u0004\u00082\u00103J\u0015\u00104\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u000f\u00a2\u0006\u0004\u00084\u0010\u0012J\'\u00109\u001a\u00020\u000c2\u0006\u00105\u001a\u0002002\u0006\u00106\u001a\u0002002\u0008\u00108\u001a\u0004\u0018\u000107\u00a2\u0006\u0004\u00089\u0010:R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010B\u001a\u00020?8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001b\u0010P\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u001c\u0010T\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u001c\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010SR\u001a\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000c0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010SR\u001a\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u000c0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010SR\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR&\u0010f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020d0c0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010SR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010o\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010(\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010u\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0016\u0010x\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010w\u00a8\u0006{"
    }
    d2 = {
        "Lteam/opay/pay/home/security/BiometricSettingClient;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lteam/opay/pay/home/security/BiometricSettingClient$a;",
        "listener",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/security/BiometricSettingClient$a;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/home/security/BiometricSettingClient$a;)V",
        "",
        "I",
        "w",
        "",
        "fromCheck",
        "Y",
        "(Z)V",
        "U",
        "V",
        "K",
        "W",
        "",
        "message",
        "setPin",
        "code",
        "f0",
        "(Ljava/lang/String;ZLjava/lang/String;)V",
        "M",
        "fingerprintType",
        "T",
        "(Ljava/lang/String;)V",
        "d0",
        "b0",
        "Landroidx/fragment/app/DialogFragment;",
        "dialog",
        "e0",
        "(Landroidx/fragment/app/DialogFragment;)V",
        "Lteam/opay/pay/home/security/paypin/PayPinEvent;",
        "event",
        "(Lteam/opay/pay/home/security/paypin/PayPinEvent;)V",
        "switch",
        "verifySource",
        "apisSource",
        "Q",
        "(ZLjava/lang/String;Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "",
        "callback",
        "h0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "X",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "S",
        "(IILandroid/content/Intent;)V",
        "Lteam/opay/pay/home/security/BiometricSettingViewModel;",
        "a",
        "Lteam/opay/pay/home/security/BiometricSettingViewModel;",
        "settingViewModel",
        "Lteam/opay/core/settings/SettingsStorage;",
        "b",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lag8;",
        "c",
        "Lag8;",
        "lifecycleOwner",
        "Landroid/content/Context;",
        "d",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/biometric/BiometricPromptManager;",
        "e",
        "Lid8;",
        "P",
        "()Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricManager",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "showToastEvent",
        "g",
        "refreshSwitchEvent",
        "h",
        "biometricCancelEvent",
        "i",
        "biometricFailureEvent",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "j",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "O",
        "()Lteam/opay/pay/biometric/BiometricIntroduction;",
        "a0",
        "(Lteam/opay/pay/biometric/BiometricIntroduction;)V",
        "biometricIntroduction",
        "Lkotlin/Pair;",
        "Lteam/opay/pay/biometric/FingerData;",
        "k",
        "biometricSuccess",
        "Lteam/opay/pay/util/OpayLoadingWindow;",
        "l",
        "Lteam/opay/pay/util/OpayLoadingWindow;",
        "loadingWindow",
        "m",
        "Landroidx/fragment/app/FragmentActivity;",
        "n",
        "Lteam/opay/pay/home/security/BiometricSettingClient$a;",
        "refreshListener",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "o",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "p",
        "Ljava/lang/String;",
        "source",
        "q",
        "Z",
        "loginBio",
        "r",
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
.field public static final r:Lteam/opay/pay/home/security/BiometricSettingClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

.field public b:Lteam/opay/core/settings/SettingsStorage;

.field public c:Lag8;

.field public d:Landroid/content/Context;

.field public final e:Lid8;
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
            "Lkotlin/Unit;",
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
            "Lkotlin/Unit;",
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/pay/biometric/BiometricIntroduction;

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lteam/opay/pay/biometric/FingerData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/util/OpayLoadingWindow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

.field public o:Lteam/opay/pay/account/verify/VerifyEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/BiometricSettingClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/BiometricSettingClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/BiometricSettingClient;->r:Lteam/opay/pay/home/security/BiometricSettingClient$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcc1;

    invoke-direct {v0}, Lcc1;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->e:Lid8;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->h:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->i:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->k:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v0, Lteam/opay/pay/util/OpayLoadingWindow;

    invoke-direct {v0}, Lteam/opay/pay/util/OpayLoadingWindow;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->l:Lteam/opay/pay/util/OpayLoadingWindow;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/security/BiometricSettingClient$a;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/security/BiometricSettingClient$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;-><init>()V

    .line 11
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 12
    new-instance v0, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    .line 14
    const-class v1, Lteam/opay/pay/home/security/BiometricSettingViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v1

    new-instance v2, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    new-instance v3, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    new-instance v5, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$5;

    invoke-direct {v5, p1, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    invoke-static {p1, v1, v2, v3, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/home/security/BiometricSettingViewModel;

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 16
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 17
    iput-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 20
    new-instance p2, Lteam/opay/pay/biometric/BiometricIntroduction;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApplication(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    if-nez v0, :cond_0

    const-string v0, "settingsStorage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-direct {p2, p1, v4}, Lteam/opay/pay/biometric/BiometricIntroduction;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V

    .line 21
    invoke-virtual {p0, p2}, Lteam/opay/pay/home/security/BiometricSettingClient;->a0(Lteam/opay/pay/biometric/BiometricIntroduction;)V

    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->I()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/home/security/BiometricSettingClient$a;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/security/BiometricSettingClient$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;-><init>()V

    .line 24
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    invoke-direct {v0, p1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 25
    new-instance v0, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$6;

    invoke-direct {v0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$6;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 26
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lteam/opay/pay/home/security/BiometricSettingViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    .line 27
    new-instance v3, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$7;

    invoke-direct {v3, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 28
    new-instance v4, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$8;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$special$$inlined$viewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    invoke-interface {v1}, Lid8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/home/security/BiometricSettingViewModel;

    iput-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 31
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 32
    new-instance v0, Lteam/opay/pay/biometric/BiometricIntroduction;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApplication(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    if-nez v2, :cond_0

    const-string v2, "settingsStorage"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-direct {v0, v1, v5}, Lteam/opay/pay/biometric/BiometricIntroduction;-><init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V

    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->a0(Lteam/opay/pay/biometric/BiometricIntroduction;)V

    .line 33
    iput-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 34
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->I()V

    return-void
.end method

.method public static final A(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->T(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final B(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const-string v1, "settingsStorage"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 12
    .line 13
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 14
    .line 15
    const-string v4, "context"

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v3, v2

    .line 23
    :cond_0
    invoke-direct {p1, v3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "login"

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lteam/opay/core/settings/NoClearStorage;->O0(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 32
    .line 33
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v3, v2

    .line 41
    :cond_1
    invoke-direct {p1, v3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    const-string v3, "logout"

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lteam/opay/core/settings/NoClearStorage;->O0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 50
    .line 51
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v3, v2

    .line 59
    :cond_2
    invoke-direct {p1, v3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "applock"

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lteam/opay/core/settings/NoClearStorage;->O0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Ldfa;->a:Ldfa;

    .line 68
    .line 69
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v3, v2

    .line 77
    :cond_3
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-virtual {p1, v3, v4}, Ldfa;->v(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 86
    .line 87
    if-nez v3, :cond_4

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v3, v2

    .line 93
    :cond_4
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1, v2}, Ldfa;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    const-string p1, "refreshListener"

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object p1, v2

    .line 110
    :cond_5
    invoke-interface {p1}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->c()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    sget-object p1, Ldfa;->a:Ldfa;

    .line 115
    .line 116
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 117
    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object v3, v2

    .line 124
    :cond_7
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v1, v0}, Ldfa;->v(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    const/4 p1, 0x0

    .line 132
    invoke-static {p0, p1, v0, v2}, Lteam/opay/pay/home/security/BiometricSettingClient;->Z(Lteam/opay/pay/home/security/BiometricSettingClient;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "context"

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v1, v0

    .line 20
    :cond_0
    invoke-direct {p1, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "payment"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lteam/opay/core/settings/NoClearStorage;->O0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lb62;->a:Lb62;

    .line 29
    .line 30
    invoke-virtual {p1}, Lb62;->g()V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {p0, p1, v1, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->Z(Lteam/opay/pay/home/security/BiometricSettingClient;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "context"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-static {v0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public static final F(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-static {v0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public static final G(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->Z(Lteam/opay/pay/home/security/BiometricSettingClient;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->l:Lteam/opay/pay/util/OpayLoadingWindow;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/OpayLoadingWindow;->U(Z)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final J()Lteam/opay/pay/biometric/BiometricPromptManager;
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

.method public static final L(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "settingViewModel"

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const-string p0, "lifecycleOwner"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->v(Lag8;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Lkotlin/Pair;

    .line 32
    .line 33
    const-string v0, "setting_bio_fingerprint_login_off_window_con"

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "settingViewModel"

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const-string p0, "lifecycleOwner"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->x(Lag8;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Lkotlin/Pair;

    .line 32
    .line 33
    const-string v0, "setting_bio_fingerprint_pay_off_window_con"

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/home/security/BiometricSettingClient;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p3, "setting"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/home/security/BiometricSettingClient;->Q(ZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic Z(Lteam/opay/pay/home/security/BiometricSettingClient;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->Y(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->A(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->D(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->z(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "refreshListener"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    invoke-interface {p0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->c()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic d()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/security/BiometricSettingClient;->J()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->C(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->c0(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->B(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/home/security/BiometricSettingClient;->f0(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic h(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->L(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->y(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->H(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->x(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->N(Lteam/opay/pay/home/security/BiometricSettingClient;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->G(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->F(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->E(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lteam/opay/pay/home/security/BiometricSettingClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lteam/opay/pay/home/security/BiometricSettingClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lteam/opay/pay/home/security/BiometricSettingClient;)Lteam/opay/pay/home/security/BiometricSettingClient$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lteam/opay/pay/home/security/BiometricSettingClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t(Lteam/opay/pay/home/security/BiometricSettingClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lteam/opay/pay/home/security/BiometricSettingClient;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->Y(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lteam/opay/pay/home/security/BiometricSettingClient;Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->o:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-void
.end method

.method public static final x(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "lifecycleOwner"

    .line 15
    .line 16
    const-string v4, "settingViewModel"

    .line 17
    .line 18
    const-string v5, "refreshListener"

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-eq v1, v2, :cond_6

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v6, v0

    .line 40
    :goto_0
    const-string v0, "sms"

    .line 41
    .line 42
    invoke-interface {v6, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v1, v6

    .line 55
    :cond_3
    const-string v2, "payment"

    .line 56
    .line 57
    invoke-interface {v1, v2}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->b(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object v7, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move-object v7, v1

    .line 70
    :goto_1
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 71
    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v8, v6

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move-object v8, v1

    .line 80
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v9, v1

    .line 85
    check-cast v9, Lteam/opay/pay/biometric/FingerData;

    .line 86
    .line 87
    iget-object v11, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->o:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 88
    .line 89
    iget-object v13, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->p:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v14, 0x10

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    const-string v10, "PAY_FINGERPRINT"

    .line 95
    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-static/range {v7 .. v15}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->I(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 102
    .line 103
    if-nez v1, :cond_7

    .line 104
    .line 105
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v1, v6

    .line 109
    :cond_7
    const-string v2, "login"

    .line 110
    .line 111
    invoke-interface {v1, v2}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->b(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 115
    .line 116
    if-nez v1, :cond_8

    .line 117
    .line 118
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v7, v6

    .line 122
    goto :goto_3

    .line 123
    :cond_8
    move-object v7, v1

    .line 124
    :goto_3
    iget-object v1, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 125
    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v8, v6

    .line 132
    goto :goto_4

    .line 133
    :cond_9
    move-object v8, v1

    .line 134
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    move-object v9, v1

    .line 139
    check-cast v9, Lteam/opay/pay/biometric/FingerData;

    .line 140
    .line 141
    iget-object v11, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->o:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 142
    .line 143
    iget-object v13, v0, Lteam/opay/pay/home/security/BiometricSettingClient;->p:Ljava/lang/String;

    .line 144
    .line 145
    const/16 v14, 0x10

    .line 146
    .line 147
    const/4 v15, 0x0

    .line 148
    const-string v10, "LOGIN_FINGERPRINT"

    .line 149
    .line 150
    const/4 v12, 0x0

    .line 151
    invoke-static/range {v7 .. v15}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->I(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object v0
.end method

.method public static final y(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "refreshListener"

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    invoke-interface {p0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->a()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final z(Lteam/opay/pay/home/security/BiometricSettingClient;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public final I()V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "lifecycleOwner"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    new-instance v4, Lteam/opay/pay/home/security/BiometricSettingClient$b;

    .line 15
    .line 16
    invoke-direct {v4, p0}, Lteam/opay/pay/home/security/BiometricSettingClient$b;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 17
    .line 18
    .line 19
    const-string v5, "verify_pool_result_key"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v5, v4}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v2

    .line 32
    :cond_1
    new-instance v4, Lteam/opay/pay/home/security/BiometricSettingClient$c;

    .line 33
    .line 34
    invoke-direct {v4, p0}, Lteam/opay/pay/home/security/BiometricSettingClient$c;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "verify_pool_exit_key"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v5, v4}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v2, v0

    .line 51
    :goto_0
    invoke-interface {v2}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lteam/opay/pay/home/security/BiometricSettingClient$d;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lteam/opay/pay/home/security/BiometricSettingClient$d;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->O()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricIntroduction;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/home/security/BiometricCloseDialogFragment;->k:Lteam/opay/pay/home/security/BiometricCloseDialogFragment$Companion;

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$string;->osdk_close_biometric_des_login:I

    .line 14
    .line 15
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/BiometricCloseDialogFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/home/security/BiometricCloseDialogFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ldc1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Ldc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/BiometricCloseDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->e0(Landroidx/fragment/app/DialogFragment;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lx7b;->a:Lx7b;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Lkotlin/Pair;

    .line 38
    .line 39
    const-string v2, "setting_bio_fingerprint_login_off_window"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final M()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->O()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricIntroduction;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/home/security/BiometricCloseDialogFragment;->k:Lteam/opay/pay/home/security/BiometricCloseDialogFragment$Companion;

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$string;->osdk_close_biometric_des_pay:I

    .line 14
    .line 15
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/BiometricCloseDialogFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/home/security/BiometricCloseDialogFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lfc1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lfc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/BiometricCloseDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->e0(Landroidx/fragment/app/DialogFragment;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lx7b;->a:Lx7b;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Lkotlin/Pair;

    .line 38
    .line 39
    const-string v2, "setting_bio_fingerprint_pay_off_window"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final O()Lteam/opay/pay/biometric/BiometricIntroduction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->j:Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "biometricIntroduction"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final P()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->e:Lid8;

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

.method public final Q(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "verifySource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apisSource"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->q:Z

    .line 15
    .line 16
    iput-object p3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->p:Ljava/lang/String;

    .line 17
    .line 18
    sget-object p1, Luc1;->a:Luc1;

    .line 19
    .line 20
    iget-object p3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "login"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0, p3}, Luc1;->c(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->K()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final S(IILandroid/content/Intent;)V
    .locals 10
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 p3, 0x3e9

    .line 2
    .line 3
    if-ne p1, p3, :cond_1

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "refreshListener"

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_0
    const-string p2, "payment"

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->d(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->O()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->k:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    iget-object v5, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->h:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    iget-object v6, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->i:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    const/16 v8, 0x40

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v2, 0x3

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-static/range {v0 .. v9}, Lteam/opay/pay/biometric/BiometricIntroduction;->x(Lteam/opay/pay/biometric/BiometricIntroduction;Landroidx/fragment/app/FragmentActivity;ILandroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "LOGIN_FINGERPRINT"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "setting_bio_show"

    .line 10
    .line 11
    const-string v4, "from"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object p1, Lx7b;->a:Lx7b;

    .line 16
    .line 17
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-array v1, v1, [Lkotlin/Pair;

    .line 22
    .line 23
    aput-object v2, v1, v0

    .line 24
    .line 25
    const-string v0, "fingerprint_login_enable_succ_show"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->b0()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "PAY_FINGERPRINT"

    .line 35
    .line 36
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    sget-object p1, Lx7b;->a:Lx7b;

    .line 43
    .line 44
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-array v1, v1, [Lkotlin/Pair;

    .line 49
    .line 50
    aput-object v2, v1, v0

    .line 51
    .line 52
    const-string v0, "fingerprint_pay_enable_succ_show"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->d0()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final U()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->P()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "context"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v1, v3

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->p(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->P()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v3

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->m(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->P()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    const-string v1, "settingsStorage"

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v1, v3

    .line 54
    :cond_3
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->s(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {p0, v0, v1, v3}, Lteam/opay/pay/home/security/BiometricSettingClient;->Z(Lteam/opay/pay/home/security/BiometricSettingClient;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final V()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->P()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "context"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v1, v2

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->m(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "refreshListener"

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    sget v3, Lteam/opay/pay/R$string;->biometric_not_added_finger:I

    .line 27
    .line 28
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v2, v0

    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    invoke-interface {v2, v0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->f(ZZ)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    sget-object v0, Ldfa;->a:Ldfa;

    .line 54
    .line 55
    invoke-virtual {v0}, Ldfa;->l()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    sub-long/2addr v3, v5

    .line 60
    const-wide/32 v5, 0x493e0

    .line 61
    .line 62
    .line 63
    cmp-long v0, v3, v5

    .line 64
    .line 65
    if-gez v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    sget v1, Lteam/opay/pay/R$string;->biometric_open_failure_tip:I

    .line 70
    .line 71
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move-object v2, v0

    .line 88
    :goto_1
    const-string v0, "login"

    .line 89
    .line 90
    invoke-interface {v2, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->d(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->O()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 98
    .line 99
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v6, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    iget-object v7, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->k:Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    iget-object v8, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->h:Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    iget-object v9, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->i:Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    const/16 v11, 0x40

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v5, 0x1

    .line 114
    const/4 v10, 0x0

    .line 115
    invoke-static/range {v3 .. v12}, Lteam/opay/pay/biometric/BiometricIntroduction;->x(Lteam/opay/pay/biometric/BiometricIntroduction;Landroidx/fragment/app/FragmentActivity;ILandroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 119
    .line 120
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final W()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "settingViewModel"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->F()Lteam/opay/core/api/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$User;->l()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v0, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    sget v0, Lteam/opay/pay/R$string;->set_payment_pin_tip:I

    .line 47
    .line 48
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x0

    .line 56
    move-object v1, p0

    .line 57
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/home/security/BiometricSettingClient;->g0(Lteam/opay/pay/home/security/BiometricSettingClient;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->P()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->d:Landroid/content/Context;

    .line 73
    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    const-string v2, "context"

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v2, v1

    .line 82
    :cond_3
    invoke-virtual {v0, v2}, Lteam/opay/pay/biometric/BiometricPromptManager;->m(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    sget v2, Lteam/opay/pay/R$string;->biometric_not_added_finger:I

    .line 91
    .line 92
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    const-string v0, "refreshListener"

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    move-object v1, v0

    .line 110
    :goto_1
    const/4 v0, 0x0

    .line 111
    invoke-interface {v1, v0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->e(ZZ)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    sget-object v2, Ldfa;->a:Ldfa;

    .line 120
    .line 121
    invoke-virtual {v2}, Ldfa;->m()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    sub-long/2addr v0, v2

    .line 126
    const-wide/32 v2, 0x493e0

    .line 127
    .line 128
    .line 129
    cmp-long v4, v0, v2

    .line 130
    .line 131
    if-gez v4, :cond_6

    .line 132
    .line 133
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 134
    .line 135
    sget v1, Lteam/opay/pay/R$string;->biometric_open_payment_much_times_tip:I

    .line 136
    .line 137
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    sget-object v0, Ld00;->a:Ld00;

    .line 146
    .line 147
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    sget-object v1, Lteam/opay/pay/biometric/BiometricSaveActivity;->g:Lteam/opay/pay/biometric/BiometricSaveActivity$Companion;

    .line 154
    .line 155
    const/16 v2, 0x3e9

    .line 156
    .line 157
    invoke-virtual {v1, v0, v2}, Lteam/opay/pay/biometric/BiometricSaveActivity$Companion;->a(Landroid/app/Activity;I)V

    .line 158
    .line 159
    .line 160
    :cond_7
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 161
    .line 162
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final X(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->W()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->M()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final Y(Z)V
    .locals 4

    .line 1
    sget-object v0, Ldfa;->a:Ldfa;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->b:Lteam/opay/core/settings/SettingsStorage;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "settingsStorage"

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ldfa;->c(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 28
    .line 29
    const-string v3, "refreshListener"

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :cond_2
    invoke-interface {v0, v1, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->f(ZZ)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lb62;->a:Lb62;

    .line 41
    .line 42
    invoke-virtual {v0}, Lb62;->c()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v2, v1

    .line 55
    :goto_1
    invoke-interface {v2, v0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->e(ZZ)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final a0(Lteam/opay/pay/biometric/BiometricIntroduction;)V
    .locals 1
    .param p1    # Lteam/opay/pay/biometric/BiometricIntroduction;
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
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->j:Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 7
    .line 8
    return-void
.end method

.method public final b0()V
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 2
    .line 3
    new-instance v12, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$string;->osdk_biometric_login_success_tip:I

    .line 6
    .line 7
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget v1, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 12
    .line 13
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/16 v10, 0xf3

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v1, v12

    .line 27
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v12}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lec1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lec1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->e0(Landroidx/fragment/app/DialogFragment;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final d0()V
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 2
    .line 3
    new-instance v12, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$string;->osdk_biometric_pay_success_tip:I

    .line 6
    .line 7
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget v1, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 12
    .line 13
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/16 v10, 0xf3

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v1, v12

    .line 27
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v12}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;->e0(Landroidx/fragment/app/DialogFragment;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final e0(Landroidx/fragment/app/DialogFragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "lifecycleOwner"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v0

    .line 25
    :goto_0
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :cond_3
    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move-object v1, v0

    .line 52
    :goto_1
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    invoke-static {v1, p1}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_2
    return-void
.end method

.method public final event(Lteam/opay/pay/home/security/paypin/PayPinEvent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/paypin/PayPinEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/home/security/paypin/PayPinEvent;->a()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "settingViewModel"

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->F()Lteam/opay/core/api/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lteam/opay/core/api/GraphQL$User;->o(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final f0(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget p1, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 8
    .line 9
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment;->o:Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment$Companion;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, p2, p1, p3, v1}, Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment$Companion;->a(ZLjava/lang/String;Ljava/lang/String;I)Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lteam/opay/pay/home/security/BiometricSettingClient;->e0(Landroidx/fragment/app/DialogFragment;)V

    .line 21
    .line 22
    .line 23
    sget-object p2, Ltfb;->a:Ltfb;

    .line 24
    .line 25
    new-instance p3, Lkotlin/Pair;

    .line 26
    .line 27
    const-string v0, "error_message"

    .line 28
    .line 29
    invoke-direct {p3, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    new-array p1, p1, [Lkotlin/Pair;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    aput-object p3, p1, v0

    .line 37
    .line 38
    const-string p3, "COMMON_enter_payment_pin_error_show"

    .line 39
    .line 40
    invoke-virtual {p2, p3, p1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final h0(Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->n:Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "refreshListener"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    const-string v1, "sms"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/home/security/BiometricSettingClient;->O()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->m:Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    iget-object v6, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->k:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    iget-object v7, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->h:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    iget-object v8, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->i:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    move-object v9, p1

    .line 40
    invoke-virtual/range {v2 .. v9}, Lteam/opay/pay/biometric/BiometricIntroduction;->w(Landroidx/fragment/app/FragmentActivity;ILandroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final w()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 4
    .line 5
    const-string v2, "lifecycleOwner"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v3

    .line 14
    :cond_0
    new-instance v4, Lac1;

    .line 15
    .line 16
    invoke-direct {v4, p0}, Lac1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 20
    .line 21
    invoke-direct {v5, v4}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 28
    .line 29
    const-string v1, "settingViewModel"

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v3

    .line 37
    :cond_1
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v4, v3

    .line 49
    :cond_2
    new-instance v5, Lhc1;

    .line 50
    .line 51
    invoke-direct {v5, p0}, Lhc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 55
    .line 56
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move-object v0, v3

    .line 70
    :cond_3
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->z()Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v4, v3

    .line 82
    :cond_4
    new-instance v5, Lic1;

    .line 83
    .line 84
    invoke-direct {v5, p0}, Lic1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 88
    .line 89
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 96
    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object v0, v3

    .line 103
    :cond_5
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 108
    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v4, v3

    .line 115
    :cond_6
    new-instance v5, Ljc1;

    .line 116
    .line 117
    invoke-direct {v5, p0}, Ljc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 121
    .line 122
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 129
    .line 130
    if-nez v0, :cond_7

    .line 131
    .line 132
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    move-object v0, v3

    .line 136
    :cond_7
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 141
    .line 142
    if-nez v4, :cond_8

    .line 143
    .line 144
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move-object v4, v3

    .line 148
    :cond_8
    new-instance v5, Lkc1;

    .line 149
    .line 150
    invoke-direct {v5, p0}, Lkc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 151
    .line 152
    .line 153
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 154
    .line 155
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 162
    .line 163
    if-nez v0, :cond_9

    .line 164
    .line 165
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    move-object v0, v3

    .line 169
    :cond_9
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 174
    .line 175
    if-nez v4, :cond_a

    .line 176
    .line 177
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v4, v3

    .line 181
    :cond_a
    new-instance v5, Llc1;

    .line 182
    .line 183
    invoke-direct {v5, p0}, Llc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 184
    .line 185
    .line 186
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 187
    .line 188
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->f:Landroidx/lifecycle/MutableLiveData;

    .line 195
    .line 196
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 197
    .line 198
    if-nez v4, :cond_b

    .line 199
    .line 200
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    move-object v4, v3

    .line 204
    :cond_b
    new-instance v5, Lmc1;

    .line 205
    .line 206
    invoke-direct {v5, p0}, Lmc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 207
    .line 208
    .line 209
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 210
    .line 211
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->g:Landroidx/lifecycle/MutableLiveData;

    .line 218
    .line 219
    iget-object v4, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 220
    .line 221
    if-nez v4, :cond_c

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v4, v3

    .line 227
    :cond_c
    new-instance v5, Lnc1;

    .line 228
    .line 229
    invoke-direct {v5, p0}, Lnc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 230
    .line 231
    .line 232
    new-instance v6, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 233
    .line 234
    invoke-direct {v6, v5}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v4, v6}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->a:Lteam/opay/pay/home/security/BiometricSettingViewModel;

    .line 241
    .line 242
    if-nez v0, :cond_d

    .line 243
    .line 244
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    move-object v0, v3

    .line 248
    :cond_d
    invoke-virtual {v0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 253
    .line 254
    if-nez v1, :cond_e

    .line 255
    .line 256
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    move-object v1, v3

    .line 260
    :cond_e
    new-instance v4, Loc1;

    .line 261
    .line 262
    invoke-direct {v4, p0}, Loc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 263
    .line 264
    .line 265
    new-instance v5, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 266
    .line 267
    invoke-direct {v5, v4}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->h:Landroidx/lifecycle/MutableLiveData;

    .line 274
    .line 275
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 276
    .line 277
    if-nez v1, :cond_f

    .line 278
    .line 279
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    move-object v1, v3

    .line 283
    :cond_f
    new-instance v4, Lbc1;

    .line 284
    .line 285
    invoke-direct {v4, p0}, Lbc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 286
    .line 287
    .line 288
    new-instance v5, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 289
    .line 290
    invoke-direct {v5, v4}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->i:Landroidx/lifecycle/MutableLiveData;

    .line 297
    .line 298
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingClient;->c:Lag8;

    .line 299
    .line 300
    if-nez v1, :cond_10

    .line 301
    .line 302
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_10
    move-object v3, v1

    .line 307
    :goto_0
    new-instance v1, Lgc1;

    .line 308
    .line 309
    invoke-direct {v1, p0}, Lgc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 310
    .line 311
    .line 312
    new-instance v2, Lteam/opay/pay/home/security/BiometricSettingClient$e;

    .line 313
    .line 314
    invoke-direct {v2, v1}, Lteam/opay/pay/home/security/BiometricSettingClient$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v3, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 318
    .line 319
    .line 320
    return-void
.end method
