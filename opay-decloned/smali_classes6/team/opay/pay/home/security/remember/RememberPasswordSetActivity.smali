.class public final Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;
.super Lteam/opay/pay/home/security/remember/Hilt_RememberPasswordSetActivity;
.source "RememberPasswordSetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0015\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lteam/opay/pay/home/security/remember/RememberPswData;",
        "F",
        "(Lteam/opay/pay/home/security/remember/RememberPswData;)V",
        "Lteam/opay/core/settings/NoClearStorage;",
        "e",
        "Lid8;",
        "H",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Lzf;",
        "f",
        "J",
        "()Lzf;",
        "viewBinding",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "g",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "G",
        "()Lteam/opay/pay/biometric/BiometricIntroduction;",
        "setBiometricIntroduction",
        "(Lteam/opay/pay/biometric/BiometricIntroduction;)V",
        "biometricIntroduction",
        "Lteam/opay/pay/home/security/BiometricSettingClient;",
        "h",
        "Lteam/opay/pay/home/security/BiometricSettingClient;",
        "biometricSettingClient",
        "",
        "i",
        "I",
        "()Z",
        "supportBiometric",
        "j",
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
.field public static final j:Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/pay/biometric/BiometricIntroduction;

.field public h:Lteam/opay/pay/home/security/BiometricSettingClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->j:Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_remember_password_set:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/remember/Hilt_RememberPasswordSetActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llmc;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Llmc;-><init>(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lmmc;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lmmc;-><init>(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->f:Lid8;

    .line 27
    .line 28
    new-instance v0, Lnmc;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lnmc;-><init>(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->i:Lid8;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->L(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lzf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->M(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lzf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->K(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;Lteam/opay/pay/home/security/remember/RememberPswData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->F(Lteam/opay/pay/home/security/remember/RememberPswData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lteam/opay/pay/home/security/BiometricSettingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->h:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 2
    .line 3
    return-object p0
.end method

.method private final H()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final K(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final L(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->G()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/biometric/BiometricIntroduction;->s(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final M(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)Lzf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lzf;->inflate(Landroid/view/LayoutInflater;)Lzf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final F(Lteam/opay/pay/home/security/remember/RememberPswData;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/home/security/remember/RememberPswData;->d()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v1, :cond_1

    .line 11
    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Lteam/opay/core/settings/NoClearStorage;->f2(Z)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-virtual {v2, v3}, Lteam/opay/core/settings/NoClearStorage;->e2(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v0}, Lteam/opay/core/settings/NoClearStorage;->f2(Z)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Lteam/opay/core/settings/NoClearStorage;->e2(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Lteam/opay/core/settings/NoClearStorage;->e2(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->H()Lteam/opay/core/settings/NoClearStorage;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Lteam/opay/core/settings/NoClearStorage;->f2(Z)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-object v2, Lx7b;->a:Lx7b;

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/pay/home/security/remember/RememberPswData;->d()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v3, "select"

    .line 71
    .line 72
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-array v1, v1, [Lkotlin/Pair;

    .line 77
    .line 78
    aput-object p1, v1, v0

    .line 79
    .line 80
    const-string p1, "security_lock_set_page_click"

    .line 81
    .line 82
    invoke-virtual {v2, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "Set successfully"

    .line 86
    .line 87
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final G()Lteam/opay/pay/biometric/BiometricIntroduction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->g:Lteam/opay/pay/biometric/BiometricIntroduction;

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

.method public final I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public J()Lzf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzf;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->J()Lzf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->h:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/home/security/BiometricSettingClient;->S(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/security/remember/Hilt_RememberPasswordSetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->I()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->J()Lzf;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Lzf;->f:Landroidx/appcompat/widget/SwitchCompat;

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->G()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricIntroduction;->p()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 28
    .line 29
    new-instance v0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$a;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$a;-><init>(Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0, v0}, Lteam/opay/pay/home/security/BiometricSettingClient;-><init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/home/security/BiometricSettingClient$a;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->h:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->J()Lzf;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lzf;->g:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v0, "titleFinger"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity;->J()Lzf;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p1, p1, Lzf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    const-string v0, "layoutFinger"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    sget-object p1, Lteam/opay/pay/home/security/remember/RememberListFragment;->n:Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;->a(Z)Lteam/opay/pay/home/security/remember/RememberListFragment;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$onCreate$2$1;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/remember/RememberPasswordSetActivity$onCreate$2$1;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->W(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 84
    .line 85
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
