.class public final Lteam/opay/pay/home/security/BiometricSettingClient$c;
.super Ljava/lang/Object;
.source "BiometricSettingClient.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/BiometricSettingClient;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/security/BiometricSettingClient;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$c;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyExitEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->BIOMETRICS_LOGIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "C10100"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$c;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->r(Lteam/opay/pay/home/security/BiometricSettingClient;)Lteam/opay/pay/home/security/BiometricSettingClient$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string p1, "refreshListener"

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    :cond_0
    invoke-interface {p1}, Lteam/opay/pay/home/security/BiometricSettingClient$a;->a()V

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$c;->c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
