.class final Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IFunAttrMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lteam/opay/swarmfoundation/data/AsyncMethodResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lteam/opay/swarmfoundation/data/AsyncMethodResult;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $attrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mediatorLiveData:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lteam/opay/swarmfoundation/data/AsyncMethodResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lteam/opay/swarmfoundation/data/IFunAttrMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/lifecycle/MediatorLiveData;Lteam/opay/swarmfoundation/data/IFunAttrMap;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lteam/opay/swarmfoundation/data/AsyncMethodResult;",
            ">;",
            "Lteam/opay/swarmfoundation/data/IFunAttrMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$mediatorLiveData:Landroidx/lifecycle/MediatorLiveData;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->this$0:Lteam/opay/swarmfoundation/data/IFunAttrMap;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$block:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "$block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$attrMap"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/swarmfoundation/data/AsyncMethodResult;

    invoke-virtual {p0, p1}, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->invoke(Lteam/opay/swarmfoundation/data/AsyncMethodResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lteam/opay/swarmfoundation/data/AsyncMethodResult;)V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 3
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$mediatorLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->d()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 4
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->this$0:Lteam/opay/swarmfoundation/data/IFunAttrMap;

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lteam/opay/swarmfoundation/data/IFunAttrMap$a;->a(Lteam/opay/swarmfoundation/data/IFunAttrMap;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 9
    :cond_1
    iget-object v1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/AsyncMethodResult;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    iget-object p1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Lteam/opay/swarmfoundation/ScopeExecutors;

    invoke-direct {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    new-instance v2, Lteam/opay/swarmfoundation/data/a;

    invoke-direct {v2, v0, v1}, Lteam/opay/swarmfoundation/data/a;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 12
    :goto_2
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lteam/opay/swarmfoundation/ScopeExecutors;

    invoke-direct {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    new-instance v3, Lteam/opay/swarmfoundation/data/a;

    invoke-direct {v3, v1, v2}, Lteam/opay/swarmfoundation/data/a;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    throw p1

    .line 14
    :goto_3
    iget-object p1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$asyncMethodSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_3

    .line 15
    new-instance p1, Lteam/opay/swarmfoundation/ScopeExecutors;

    invoke-direct {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->$attrMap:Ljava/util/Map;

    new-instance v2, Lteam/opay/swarmfoundation/data/a;

    invoke-direct {v2, v0, v1}, Lteam/opay/swarmfoundation/data/a;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    :goto_4
    return-void
.end method
