.class public final Lteam/opay/pay/home/security/remember/RememberPswTipFragment$a;
.super Ljava/lang/Object;
.source "RememberPswTipFragment.kt"

# interfaces
.implements Lteam/opay/pay/home/security/BiometricSettingClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/home/security/remember/RememberPswTipFragment$a",
        "Lteam/opay/pay/home/security/BiometricSettingClient$a;",
        "",
        "c",
        "()V",
        "a",
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
.field public final synthetic a:Lteam/opay/pay/home/security/remember/RememberPswTipFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/remember/RememberPswTipFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$a;->a:Lteam/opay/pay/home/security/remember/RememberPswTipFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$a;->a:Lteam/opay/pay/home/security/remember/RememberPswTipFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->U(Lteam/opay/pay/home/security/remember/RememberPswTipFragment;)V

    .line 4
    .line 5
    .line 6
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
    const-string v3, "autoLogout"

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
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$a;->a:Lteam/opay/pay/home/security/remember/RememberPswTipFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->U(Lteam/opay/pay/home/security/remember/RememberPswTipFragment;)V

    .line 4
    .line 5
    .line 6
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
    const-string v3, "autoLogout"

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
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->d(Lteam/opay/pay/home/security/BiometricSettingClient$a;ZZ)V

    .line 2
    .line 3
    .line 4
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
