.class public final Lteam/opay/pay/home/security/BiometricSettingClient$b;
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
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$b;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

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
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient$b;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->v(Lteam/opay/pay/home/security/BiometricSettingClient;Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$b;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->q(Lteam/opay/pay/home/security/BiometricSettingClient;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$b;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->t(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$b;->c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
