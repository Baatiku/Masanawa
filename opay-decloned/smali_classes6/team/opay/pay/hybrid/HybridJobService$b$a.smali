.class public final Lteam/opay/pay/hybrid/HybridJobService$b$a;
.super Ljava/lang/Object;
.source "HybridJobService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/hybrid/HybridJobService$b;->run()V
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
.field public final synthetic a:Lteam/opay/pay/hybrid/HybridJobService$b;


# direct methods
.method public constructor <init>(Lteam/opay/pay/hybrid/HybridJobService$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridJobService$b$a;->a:Lteam/opay/pay/hybrid/HybridJobService$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/hybrid/HybridJobService$b$a;->a:Lteam/opay/pay/hybrid/HybridJobService$b;

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/hybrid/HybridJobService$b;->a:Lteam/opay/pay/hybrid/HybridJobService;

    .line 4
    .line 5
    iget-object v0, v0, Lteam/opay/pay/hybrid/HybridJobService$b;->c:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
