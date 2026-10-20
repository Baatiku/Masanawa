.class public interface abstract Lteam/opay/business/provider/biometric/IBiometricCashier;
.super Ljava/lang/Object;
.source "IBiometricCashier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/provider/biometric/IBiometricCashier$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008g\u0018\u0000 \u000c2\u00020\u0001:\u0001\rJ\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/business/provider/biometric/IBiometricCashier;",
        "",
        "",
        "checkSetBiometricPay",
        "()Z",
        "",
        "pin",
        "",
        "setBiometricPay",
        "(Ljava/lang/String;)V",
        "resetBiometricPay",
        "()V",
        "Companion",
        "a",
        "business-provider_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/business/provider/biometric/IBiometricCashier$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/provider/biometric/IBiometricCashier$a;->a:Lteam/opay/business/provider/biometric/IBiometricCashier$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/business/provider/biometric/IBiometricCashier;->Companion:Lteam/opay/business/provider/biometric/IBiometricCashier$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract checkSetBiometricPay()Z
.end method

.method public abstract resetBiometricPay()V
.end method

.method public abstract setBiometricPay(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
