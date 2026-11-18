.class public final Lteam/opay/pay/onboarding/tabs/SignUpViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SignUpViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/tabs/SignUpViewModel$SelectedCountryProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u00016B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0017\u0010#\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R#\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0%0$8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0014\u0010-\u001a\u00020\u00168\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u001aR\u0014\u00101\u001a\u00020.8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0016\u00105\u001a\u0004\u0018\u0001028\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/tabs/SignUpViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "Lteam/opay/core/auth/AuthRepository;",
        "authRepository",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "biometricRepository",
        "Landroid/app/Application;",
        "application",
        "sessionProvider",
        "<init>",
        "(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/biometric/BiometricRepository;Landroid/app/Application;Lteam/opay/core/api/e;)V",
        "c",
        "Lteam/opay/core/api/SessionRepository;",
        "d",
        "Lteam/opay/core/auth/AuthRepository;",
        "e",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "f",
        "Landroid/app/Application;",
        "Lteam/opay/core/api/Country;",
        "g",
        "Lteam/opay/core/api/Country;",
        "s",
        "()Lteam/opay/core/api/Country;",
        "setSelectedCountry",
        "(Lteam/opay/core/api/Country;)V",
        "selectedCountry",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "h",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "getPhoneValidation",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "phoneValidation",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/Session;",
        "i",
        "Landroidx/lifecycle/LiveData;",
        "getSession",
        "()Landroidx/lifecycle/LiveData;",
        "session",
        "o",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "SelectedCountryProvider",
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

.field public final c:Lteam/opay/core/api/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/auth/AuthRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/biometric/BiometricRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/core/api/Country;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/Session;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/biometric/BiometricRepository;Landroid/app/Application;Lteam/opay/core/api/e;)V
    .locals 7
    .param p1    # Lteam/opay/core/api/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/auth/AuthRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/biometric/BiometricRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "biometricRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "application"

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
    invoke-direct {p0, p4}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 27
    .line 28
    .line 29
    iput-object p5, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->b:Lteam/opay/core/api/e;

    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->c:Lteam/opay/core/api/SessionRepository;

    .line 32
    .line 33
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->d:Lteam/opay/core/auth/AuthRepository;

    .line 34
    .line 35
    iput-object p3, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->e:Lteam/opay/pay/biometric/BiometricRepository;

    .line 36
    .line 37
    iput-object p4, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->f:Landroid/app/Application;

    .line 38
    .line 39
    sget-object p2, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 40
    .line 41
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->g:Lteam/opay/core/api/Country;

    .line 42
    .line 43
    new-instance p2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 44
    .line 45
    new-instance p3, Lteam/opay/pay/onboarding/tabs/SignUpViewModel$SelectedCountryProvider;

    .line 46
    .line 47
    new-instance p4, Ltrd;

    .line 48
    .line 49
    invoke-direct {p4, p0}, Ltrd;-><init>(Lteam/opay/pay/onboarding/tabs/SignUpViewModel;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, p4}, Lteam/opay/pay/onboarding/tabs/SignUpViewModel$SelectedCountryProvider;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    const/4 p4, 0x0

    .line 56
    const/4 p5, 0x2

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static {p3, p4, p5, v6}, Lm7e;->p0(Lteam/opay/core/api/e;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x4

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v1, 0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    move-object v0, p2

    .line 67
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->h:Lteam/opay/pay/android/validation/FieldValidation;

    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    invoke-static {p1, p4, p2, v6}, Lteam/opay/core/api/SessionRepository;->l(Lteam/opay/core/api/SessionRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/tabs/SignUpViewModel;)Lteam/opay/core/api/Country;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->t(Lteam/opay/pay/onboarding/tabs/SignUpViewModel;)Lteam/opay/core/api/Country;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/onboarding/tabs/SignUpViewModel;)Lteam/opay/core/api/Country;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->g:Lteam/opay/core/api/Country;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->b:Lteam/opay/core/api/e;

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

.method public final s()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignUpViewModel;->g:Lteam/opay/core/api/Country;

    .line 2
    .line 3
    return-object v0
.end method
