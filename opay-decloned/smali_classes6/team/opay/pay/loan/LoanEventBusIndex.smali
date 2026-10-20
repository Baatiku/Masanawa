.class public Lteam/opay/pay/loan/LoanEventBusIndex;
.super Ljava/lang/Object;
.source "LoanEventBusIndex.java"

# interfaces
.implements Ld8e;


# static fields
.field private static final SUBSCRIBER_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc8e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/loan/LoanEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    .line 9
    .line 10
    new-instance v1, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    .line 11
    .line 12
    const-class v2, Lteam/opay/easemoni/eventbus/EMLogoutEvent;

    .line 13
    .line 14
    sget-object v3, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    .line 15
    .line 16
    const-string v4, "logout"

    .line 17
    .line 18
    invoke-direct {v1, v4, v2, v3}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v1, v3, v4

    .line 26
    .line 27
    const-class v1, Lteam/opay/pay/loan/opay/EMFinanceEntranceFragment;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lteam/opay/pay/loan/LoanEventBusIndex;->putIndex(Lc8e;)V

    .line 33
    .line 34
    .line 35
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

.method private static putIndex(Lc8e;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/loan/LoanEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Lc8e;->b()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSubscriberInfo(Ljava/lang/Class;)Lc8e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc8e;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/loan/LoanEventBusIndex;->SUBSCRIBER_INDEX:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc8e;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method
