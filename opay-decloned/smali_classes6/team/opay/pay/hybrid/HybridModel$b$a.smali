.class public final Lteam/opay/pay/hybrid/HybridModel$b$a;
.super Ljava/lang/Object;
.source "HybridModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridModel$b;->run()V
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridModel$b;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridModel$b;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->b:Ljava/util/Map;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 2
    .line 3
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridModel$b;->a:Lteam/opay/pay/hybrid/HybridModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lteam/opay/pay/hybrid/HybridModel;->c(Lteam/opay/pay/hybrid/HybridModel;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lyl2;->b:Lyl2;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lyl2;->b(Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 25
    .line 26
    new-instance v3, Landroid/content/ComponentName;

    .line 27
    .line 28
    iget-object v4, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 29
    .line 30
    iget-object v4, v4, Lteam/opay/pay/hybrid/HybridModel$b;->b:Landroid/content/Context;

    .line 31
    .line 32
    const-class v5, Lteam/opay/pay/hybrid/HybridJobService;

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x3e9

    .line 38
    .line 39
    invoke-direct {v1, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v3, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 51
    .line 52
    iget-object v3, v3, Lteam/opay/pay/hybrid/HybridModel$b;->c:Landroid/app/job/JobScheduler;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0, v2}, Lyl2;->b(Z)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 68
    .line 69
    new-instance v1, Landroid/content/ComponentName;

    .line 70
    .line 71
    iget-object v2, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 72
    .line 73
    iget-object v2, v2, Lteam/opay/pay/hybrid/HybridModel$b;->b:Landroid/content/Context;

    .line 74
    .line 75
    const-class v3, Lteam/opay/pay/hybrid/HybridWifiOnlyJobService;

    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x3ea

    .line 81
    .line 82
    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 95
    .line 96
    iget-object v1, v1, Lteam/opay/pay/hybrid/HybridModel$b;->c:Landroid/app/job/JobScheduler;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->a:Lteam/opay/pay/hybrid/HybridModel$b;

    .line 102
    .line 103
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridModel$b;->a:Lteam/opay/pay/hybrid/HybridModel;

    .line 104
    .line 105
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridModel$b$a;->b:Ljava/util/Map;

    .line 106
    .line 107
    invoke-static {v0, v1}, Lteam/opay/pay/hybrid/HybridModel;->a(Lteam/opay/pay/hybrid/HybridModel;Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
