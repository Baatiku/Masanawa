.class public Lcom/opay/face/util/ExecutorServiceUtils;
.super Ljava/lang/Object;
.source "ExecutorServiceUtils.java"


# static fields
.field public static final a:Lteam/opay/swarmfoundation/ScopeExecutors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/face/util/ExecutorServiceUtils;->a:Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 7
    .line 8
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

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/util/ExecutorServiceUtils;->a:Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->a()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/util/ExecutorServiceUtils;->a:Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->c()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
