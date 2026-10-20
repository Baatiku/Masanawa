.class public final Lteam/opay/pay/biometric/BiometricPromptApiM;
.super Ljava/lang/Object;
.source "BiometricPromptApiM.kt"

# interfaces
.implements Lk77;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R$\u0010 \u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/biometric/BiometricPromptApiM;",
        "Lk77;",
        "<init>",
        "()V",
        "",
        "userPhone",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "authType",
        "Landroid/os/CancellationSignal;",
        "cancellationSignal",
        "Li77;",
        "biometricIdentify",
        "",
        "a",
        "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILandroid/os/CancellationSignal;Li77;)V",
        "l",
        "(ILjava/lang/String;)Ljava/lang/String;",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "f",
        "(Ljavax/crypto/Cipher;Landroid/os/CancellationSignal;Li77;)V",
        "Landroid/app/Activity;",
        "m",
        "(Landroid/app/Activity;)V",
        "Landroid/hardware/fingerprint/FingerprintManager;",
        "Landroid/hardware/fingerprint/FingerprintManager;",
        "getFingerprintManager",
        "()Landroid/hardware/fingerprint/FingerprintManager;",
        "setFingerprintManager",
        "(Landroid/hardware/fingerprint/FingerprintManager;)V",
        "fingerprintManager",
        "Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;",
        "b",
        "Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;",
        "k",
        "()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;",
        "setBiometricPrompt",
        "(Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;)V",
        "biometricPrompt",
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
.field public a:Landroid/hardware/fingerprint/FingerprintManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Li77;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->h(Li77;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Li77;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->g(Li77;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/biometric/BiometricPromptApiM;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->j(Lteam/opay/pay/biometric/BiometricPromptApiM;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/os/CancellationSignal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->i(Landroid/os/CancellationSignal;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Li77;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Li77;->onCancel()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final h(Li77;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Li77;->e()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final i(Landroid/os/CancellationSignal;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/biometric/BiometricPromptApiM;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->b:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILandroid/os/CancellationSignal;Li77;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Li77;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userPhone"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "cancellationSignal"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "biometricIdentify"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lteam/opay/pay/biometric/BiometricPromptApiM;->m(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lteam/opay/pay/biometric/KeyGenTool;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "getPackageName(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Lteam/opay/pay/biometric/KeyGenTool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->p:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet$Companion;

    .line 39
    .line 40
    invoke-virtual {v1, p3}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet$Companion;->a(I)Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Laa1;

    .line 45
    .line 46
    invoke-direct {v2, p5}, Laa1;-><init>(Li77;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->f0(Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lba1;

    .line 53
    .line 54
    invoke-direct {v2, p5}, Lba1;-><init>(Li77;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->g0(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lca1;

    .line 61
    .line 62
    invoke-direct {v2, p4}, Lca1;-><init>(Landroid/os/CancellationSignal;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->h0(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->b:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 69
    .line 70
    new-instance v1, Lda1;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lda1;-><init>(Lteam/opay/pay/biometric/BiometricPromptApiM;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->b:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v2, "getSupportFragmentManager(...)"

    .line 87
    .line 88
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "BiometricPromptApiM"

    .line 92
    .line 93
    invoke-virtual {v1, p2, v2}, Lteam/opay/core/base/BaseSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    const/4 p2, 0x1

    .line 97
    if-eq p3, p2, :cond_2

    .line 98
    .line 99
    const/4 p2, 0x2

    .line 100
    if-eq p3, p2, :cond_1

    .line 101
    .line 102
    const/4 p2, 0x3

    .line 103
    if-eq p3, p2, :cond_2

    .line 104
    .line 105
    const/4 p2, 0x4

    .line 106
    if-eq p3, p2, :cond_1

    .line 107
    .line 108
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, p3, p1}, Lteam/opay/pay/biometric/BiometricPromptApiM;->l(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    const/16 p2, 0x8

    .line 119
    .line 120
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Lteam/opay/pay/biometric/KeyGenTool;->d([B)Ljavax/crypto/Cipher;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0, p1, p4, p5}, Lteam/opay/pay/biometric/BiometricPromptApiM;->f(Ljavax/crypto/Cipher;Landroid/os/CancellationSignal;Li77;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lteam/opay/pay/biometric/KeyGenTool;->f()Ljavax/crypto/Cipher;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1, p4, p5}, Lteam/opay/pay/biometric/BiometricPromptApiM;->f(Ljavax/crypto/Cipher;Landroid/os/CancellationSignal;Li77;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Ljavax/crypto/Cipher;Landroid/os/CancellationSignal;Li77;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lw91;->a(Ljavax/crypto/Cipher;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->a:Landroid/hardware/fingerprint/FingerprintManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lteam/opay/pay/biometric/BiometricPromptApiM$a;

    .line 12
    .line 13
    invoke-direct {p1, p2, p0, p3}, Lteam/opay/pay/biometric/BiometricPromptApiM$a;-><init>(Landroid/os/CancellationSignal;Lteam/opay/pay/biometric/BiometricPromptApiM;Li77;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ly91;->a(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v2, p2

    .line 23
    invoke-static/range {v0 .. v5}, Lz91;->a(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final k()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->b:Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ldfa;->a:Ldfa;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ldfa;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Ldfa;->a:Ldfa;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ldfa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public final m(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->a:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "fingerprint"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lx91;->a(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiM;->a:Landroid/hardware/fingerprint/FingerprintManager;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
