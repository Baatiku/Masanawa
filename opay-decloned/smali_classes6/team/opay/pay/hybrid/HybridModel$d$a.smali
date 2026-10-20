.class public final Lteam/opay/pay/hybrid/HybridModel$d$a;
.super Ljava/lang/Object;
.source "HybridModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridModel$d;->run()V
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridModel$d;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridModel$d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->b:Z

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
    iget-boolean v0, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 6
    .line 7
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridModel$d;->a:Ljava/util/Map$Entry;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 16
    .line 17
    iget-object v2, v1, Lteam/opay/pay/hybrid/HybridModel$d;->b:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridModel$d;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->g(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "local match success: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 41
    .line 42
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridModel$d;->a:Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x20

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 63
    .line 64
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridModel$d;->a:Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 71
    .line 72
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "local match failure "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$d$a;->a:Lteam/opay/pay/hybrid/HybridModel$d;

    .line 91
    .line 92
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridModel$d;->c:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
