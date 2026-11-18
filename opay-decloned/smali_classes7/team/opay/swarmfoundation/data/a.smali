.class public final synthetic Lteam/opay/swarmfoundation/data/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/swarmfoundation/data/a;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/swarmfoundation/data/a;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/swarmfoundation/data/a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/swarmfoundation/data/a;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/swarmfoundation/data/IFunAttrMap$loopAsyncMethodCall$2$2;->a(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
