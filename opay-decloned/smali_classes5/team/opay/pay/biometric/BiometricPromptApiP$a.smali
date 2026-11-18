.class public final Lteam/opay/pay/biometric/BiometricPromptApiP$a;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "BiometricPromptApiP.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptApiP;->i(ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
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
        "team/opay/pay/biometric/BiometricPromptApiP$a",
        "Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;",
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
        "Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;",
        "result",
        "onAuthenticationSucceeded",
        "(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V",
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
.field public final synthetic a:Lteam/opay/pay/biometric/BiometricPromptApiP;

.field public final synthetic b:Landroid/os/CancellationSignal;

.field public final synthetic c:Li77;


# direct methods
.method public constructor <init>(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->a:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->b:Landroid/os/CancellationSignal;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->c:Li77;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->a:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->b:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    const-string v2, "onAuthenticationError"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->g(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->c:Li77;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Li77;->c(ILjava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->c:Li77;

    .line 5
    .line 6
    invoke-interface {v0}, Li77;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->c:Li77;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Li77;->a(ILjava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->a:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->b:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    const-string v2, "onAuthenticationSucceeded"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->g(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;->c:Li77;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lcb1;->a(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ldb1;->a(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Cipher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-interface {v0, p1}, Li77;->b(Ljavax/crypto/Cipher;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
