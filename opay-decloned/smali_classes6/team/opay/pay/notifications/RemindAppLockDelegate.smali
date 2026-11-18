.class public final Lteam/opay/pay/notifications/RemindAppLockDelegate;
.super Ljava/lang/Object;
.source "RemindAppLockDelegate.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/message/IForceRemindNoticeDelegate;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/message/IForceRemindNoticeDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/pay/notifications/RemindAppLockDelegate;",
        "Lteam/opay/swarmfoundation/message/IForceRemindNoticeDelegate;",
        "<init>",
        "()V",
        "inAppLockMode",
        "",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public inAppLockMode()Z
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/home/AppLockStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/home/AppLockStorage;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
