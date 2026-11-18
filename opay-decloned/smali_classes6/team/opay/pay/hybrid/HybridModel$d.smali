.class public final Lteam/opay/pay/hybrid/HybridModel$d;
.super Ljava/lang/Object;
.source "HybridModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridModel;->g(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridModel$d;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/hybrid/HybridModel$d;->b:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/hybrid/HybridModel$d;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridModel$d;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$d;->b:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v2, p0, Lteam/opay/pay/hybrid/HybridModel$d;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lteam/opay/pay/hybrid/HybridUtilsKt;->a(Lteam/opay/swarmfoundation/hybrid/HybridBean;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Lteam/opay/pay/hybrid/HybridModel$d$a;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/hybrid/HybridModel$d$a;-><init>(Lteam/opay/pay/hybrid/HybridModel$d;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lteam/opay/pay/hybrid/HybridUtilsKt;->c(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
