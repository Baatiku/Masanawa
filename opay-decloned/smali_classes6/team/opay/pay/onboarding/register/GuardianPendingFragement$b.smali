.class public final Lteam/opay/pay/onboarding/register/GuardianPendingFragement$b;
.super Lteam/opay/pay/websocket/IWsMessageDelegate;
.source "GuardianPendingFragement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/GuardianPendingFragement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/websocket/IWsMessageDelegate<",
        "Lteam/opay/pay/onboarding/register/KycGuardianChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/onboarding/register/GuardianPendingFragement$b",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lteam/opay/pay/onboarding/register/KycGuardianChannel;",
        "",
        "a",
        "()Ljava/lang/String;",
        "",
        "c",
        "()Z",
        "data",
        "",
        "f",
        "(Lteam/opay/pay/onboarding/register/KycGuardianChannel;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/websocket/IWsMessageDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GUARDIAN_TASK_DONE"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/onboarding/register/KycGuardianChannel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$b;->f(Lteam/opay/pay/onboarding/register/KycGuardianChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lteam/opay/pay/onboarding/register/KycGuardianChannel;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pending onDataReceived "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string/jumbo v2, "ws_kyc_guardian_pending_refresh"

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v2, v3, v0, v1}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
