.class public final Lteam/opay/pay/hybrid/HybridJobService$b;
.super Ljava/lang/Object;
.source "HybridJobService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridJobService;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridJobService;Ljava/util/concurrent/CountDownLatch;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridJobService$b;->a:Lteam/opay/pay/hybrid/HybridJobService;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/hybrid/HybridJobService$b;->b:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/hybrid/HybridJobService$b;->c:Landroid/app/job/JobParameters;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridJobService$b;->b:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/hybrid/HybridJobService$b$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/hybrid/HybridJobService$b$a;-><init>(Lteam/opay/pay/hybrid/HybridJobService$b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/pay/hybrid/HybridUtilsKt;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
