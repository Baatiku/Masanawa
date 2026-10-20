.class public final Lteam/opay/pay/biometric/BiometricPromptApiM$a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "BiometricPromptApiM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptApiM;->f(Ljavax/crypto/Cipher;Landroid/os/CancellationSignal;Li77;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/pay/biometric/BiometricPromptApiM$a",
        "Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;",
        "",
        "errorCode",
        "",
        "errString",
        "",
        "onAuthenticationError",
        "(ILjava/lang/CharSequence;)V",
        "onAuthenticationFailed",
        "()V",
        "helpCode",
        "helpString",
        "onAuthenticationHelp",
        "Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;",
        "result",
        "onAuthenticationSucceeded",
        "(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V",
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
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Lteam/opay/pay/biometric/BiometricPromptApiM;

.field public final synthetic c:Li77;


# direct methods
.method public constructor <init>(Landroid/os/CancellationSignal;Lteam/opay/pay/biometric/BiometricPromptApiM;Li77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->a:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->b:Lteam/opay/pay/biometric/BiometricPromptApiM;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->c:Li77;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->a:Landroid/os/CancellationSignal;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->b:Lteam/opay/pay/biometric/BiometricPromptApiM;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->k()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_1
    const/4 v2, 0x3

    .line 28
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->i0(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->c:Li77;

    .line 32
    .line 33
    invoke-interface {v0, p1, p2}, Li77;->c(ILjava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->b:Lteam/opay/pay/biometric/BiometricPromptApiM;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->k()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2, v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->j0(Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;ILjava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->c:Li77;

    .line 18
    .line 19
    invoke-interface {v0}, Li77;->d()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->b:Lteam/opay/pay/biometric/BiometricPromptApiM;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->k()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->i0(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->c:Li77;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Li77;->a(ILjava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->a:Landroid/os/CancellationSignal;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->b:Lteam/opay/pay/biometric/BiometricPromptApiM;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricPromptApiM;->k()Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {v0, v2, v1, v3, v1}, Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;->j0(Lteam/opay/pay/biometric/BiometricPromptApiMBottomSheet;ILjava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiM$a;->c:Li77;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lea1;->a(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lfa1;->a(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Ljavax/crypto/Cipher;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_1
    invoke-interface {v0, v1}, Li77;->b(Ljavax/crypto/Cipher;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
