.class public final Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;
.super Ljava/lang/Object;
.source "PayPinSettingFragment.kt"

# interfaces
.implements Lteam/opay/pay/home/security/BiometricSettingClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/home/security/paypin/PayPinSettingFragment$a",
        "Lteam/opay/pay/home/security/BiometricSettingClient$a;",
        "",
        "switch",
        "fromCheck",
        "",
        "e",
        "(ZZ)V",
        "",
        "scene",
        "d",
        "(Ljava/lang/String;)V",
        "b",
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
.field public final synthetic a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->h(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;->T(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;)Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->X(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->a(Lteam/opay/pay/home/security/BiometricSettingClient$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const-string v1, "scenario"

    .line 9
    .line 10
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "biometricType"

    .line 15
    .line 16
    const-string v2, "fingerprint"

    .line 17
    .line 18
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "promptSource"

    .line 23
    .line 24
    const-string v3, "paymentSettings"

    .line 25
    .line 26
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x3

    .line 31
    new-array v3, v3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object p1, v3, v4

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput-object v1, v3, p1

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    aput-object v2, v3, p1

    .line 41
    .line 42
    const-string p1, "biometric_verify_success"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->c(Lteam/opay/pay/home/security/BiometricSettingClient$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const-string v1, "scenario"

    .line 9
    .line 10
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "biometricType"

    .line 15
    .line 16
    const-string v2, "fingerprint"

    .line 17
    .line 18
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "promptSource"

    .line 23
    .line 24
    const-string v3, "paymentSettings"

    .line 25
    .line 26
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x3

    .line 31
    new-array v3, v3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object p1, v3, v4

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput-object v1, v3, p1

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    aput-object v2, v3, p1

    .line 41
    .line 42
    const-string p1, "biometric_verify_show"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public e(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lch6;

    .line 8
    .line 9
    iget-object v0, v0, Lch6;->f:Landroidx/appcompat/widget/SwitchCompat;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lch6;

    .line 27
    .line 28
    iget-object v0, v0, Lch6;->f:Landroidx/appcompat/widget/SwitchCompat;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lch6;

    .line 44
    .line 45
    iget-object v0, p1, Lch6;->f:Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinSettingFragment$a;->a:Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;

    .line 50
    .line 51
    new-instance v3, Ltbb;

    .line 52
    .line 53
    invoke-direct {v3, p1}, Ltbb;-><init>(Lteam/opay/pay/home/security/paypin/PayPinSettingFragment;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    invoke-static/range {v0 .. v5}, Lteam/opay/core/android/ViewKt;->p(Landroidx/appcompat/widget/SwitchCompat;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public f(ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->b(Lteam/opay/pay/home/security/BiometricSettingClient$a;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
