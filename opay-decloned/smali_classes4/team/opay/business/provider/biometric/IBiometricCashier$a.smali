.class public final Lteam/opay/business/provider/biometric/IBiometricCashier$a;
.super Ljava/lang/Object;
.source "IBiometricCashier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/provider/biometric/IBiometricCashier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001d\u0010\t\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/business/provider/biometric/IBiometricCashier$a;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/provider/biometric/IBiometricCashier;",
        "b",
        "Lid8;",
        "getDelegate",
        "()Lteam/opay/business/provider/biometric/IBiometricCashier;",
        "delegate",
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


# static fields
.field public static final synthetic a:Lteam/opay/business/provider/biometric/IBiometricCashier$a;

.field public static final b:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/business/provider/biometric/IBiometricCashier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/provider/biometric/IBiometricCashier$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/provider/biometric/IBiometricCashier$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/business/provider/biometric/IBiometricCashier$a;->a:Lteam/opay/business/provider/biometric/IBiometricCashier$a;

    .line 7
    .line 8
    new-instance v0, Lh77;

    .line 9
    .line 10
    invoke-direct {v0}, Lh77;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lteam/opay/business/provider/biometric/IBiometricCashier$a;->b:Lid8;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lteam/opay/business/provider/biometric/IBiometricCashier;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/biometric/IBiometricCashier$a;->b()Lteam/opay/business/provider/biometric/IBiometricCashier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Lteam/opay/business/provider/biometric/IBiometricCashier;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/business/provider/biometric/IBiometricCashier;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/business/provider/biometric/IBiometricCashier;

    .line 10
    .line 11
    return-object v0
.end method
