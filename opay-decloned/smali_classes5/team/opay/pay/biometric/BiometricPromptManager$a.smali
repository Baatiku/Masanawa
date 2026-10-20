.class public final Lteam/opay/pay/biometric/BiometricPromptManager$a;
.super Ljava/lang/Object;
.source "BiometricPromptManager.kt"

# interfaces
.implements Li77;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptManager;->d(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILi77;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J!\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J!\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "team/opay/pay/biometric/BiometricPromptManager$a",
        "Li77;",
        "",
        "e",
        "()V",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "b",
        "(Ljavax/crypto/Cipher;)V",
        "d",
        "",
        "errorCode",
        "",
        "errorString",
        "c",
        "(ILjava/lang/CharSequence;)V",
        "onCancel",
        "helperCode",
        "helperString",
        "a",
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
.field public final synthetic a:Li77;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Li77;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Li77;->a(ILjava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljavax/crypto/Cipher;)V
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    const-string v1, "biometric_login_enable_succ_show"

    .line 10
    .line 11
    new-array v2, v2, [Lkotlin/Pair;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lx7b;->a:Lx7b;

    .line 21
    .line 22
    const-string v1, "biometric_pay_enable_succ_show"

    .line 23
    .line 24
    new-array v2, v2, [Lkotlin/Pair;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Li77;->b(Ljavax/crypto/Cipher;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public c(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Li77;->c(ILjava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    invoke-interface {v0}, Li77;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    invoke-interface {v0}, Li77;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$a;->a:Li77;

    .line 2
    .line 3
    invoke-interface {v0}, Li77;->onCancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
