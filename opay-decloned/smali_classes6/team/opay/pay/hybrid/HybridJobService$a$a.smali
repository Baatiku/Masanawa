.class public final Lteam/opay/pay/hybrid/HybridJobService$a$a;
.super Ljava/lang/Object;
.source "HybridJobService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridJobService$a;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridJobService$a;

.field public final synthetic b:Lretrofit2/Response;


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridJobService$a;Lretrofit2/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a;->b:Lretrofit2/Response;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/hybrid/HybridJobService$a;->a:Lteam/opay/pay/hybrid/HybridJobService;

    .line 4
    .line 5
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridJobService$a;->b:Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a;->b:Lretrofit2/Response;

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Lteam/opay/pay/hybrid/HybridJobService;->a(Lteam/opay/pay/hybrid/HybridJobService;Lteam/opay/swarmfoundation/hybrid/HybridBean;Lretrofit2/Response;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;-><init>(Lteam/opay/pay/hybrid/HybridJobService$a$a;Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lteam/opay/pay/hybrid/HybridUtilsKt;->c(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
