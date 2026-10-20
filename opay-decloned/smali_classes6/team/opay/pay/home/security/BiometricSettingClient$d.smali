.class public final Lteam/opay/pay/home/security/BiometricSettingClient$d;
.super Ljava/lang/Object;
.source "BiometricSettingClient.kt"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/BiometricSettingClient;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/BiometricSettingClient$d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/home/security/BiometricSettingClient$d",
        "Landroidx/lifecycle/e;",
        "Lag8;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
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
.field public final synthetic a:Lteam/opay/pay/home/security/BiometricSettingClient;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/BiometricSettingClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/home/security/BiometricSettingClient$d$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_2

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 43
    .line 44
    invoke-static {p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->s(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 58
    .line 59
    invoke-static {p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient;->u(Lteam/opay/pay/home/security/BiometricSettingClient;Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingClient$d;->a:Lteam/opay/pay/home/security/BiometricSettingClient;

    .line 63
    .line 64
    invoke-static {p1}, Lteam/opay/pay/home/security/BiometricSettingClient;->p(Lteam/opay/pay/home/security/BiometricSettingClient;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
