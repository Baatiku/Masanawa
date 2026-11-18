.class public final Lteam/opay/pay/hybrid/HybridJobService$a$a$a;
.super Ljava/lang/Object;
.source "HybridJobService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridJobService$a$a;->run()V
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

.field public final synthetic b:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridJobService$a$a;Lkotlin/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->b:Lkotlin/Pair;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->b:Lkotlin/Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

    .line 18
    .line 19
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 20
    .line 21
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a;->b:Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->g(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "md5 match finish: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

    .line 43
    .line 44
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 45
    .line 46
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a;->b:Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x20

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

    .line 61
    .line 62
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 63
    .line 64
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridJobService$a;->b:Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 65
    .line 66
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridJobService$a$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a$a;

    .line 74
    .line 75
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridJobService$a$a;->a:Lteam/opay/pay/hybrid/HybridJobService$a;

    .line 76
    .line 77
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridJobService$a;->c:Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method
