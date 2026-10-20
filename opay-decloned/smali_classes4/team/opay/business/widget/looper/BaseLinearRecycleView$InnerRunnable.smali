.class public final Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;
.super Ljava/lang/Object;
.source "BaseLinearRecycleView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/widget/looper/BaseLinearRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;",
        "Ljava/lang/Runnable;",
        "<init>",
        "(Lteam/opay/business/widget/looper/BaseLinearRecycleView;)V",
        "run",
        "",
        "business-widget_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/looper/BaseLinearRecycleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->g(Lteam/opay/business/widget/looper/BaseLinearRecycleView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 31
    .line 32
    invoke-static {v0}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->f(Lteam/opay/business/widget/looper/BaseLinearRecycleView;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->getDELAYED_TIME()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 47
    .line 48
    invoke-virtual {v2}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->p()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    if-le v2, v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsLinearSnapHelper;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lteam/opay/business/widget/looper/OmsLinearSnapHelper;->r()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 81
    .line 82
    invoke-static {v0}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->f(Lteam/opay/business/widget/looper/BaseLinearRecycleView;)Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lteam/opay/business/widget/looper/BaseLinearRecycleView$InnerRunnable;->a:Lteam/opay/business/widget/looper/BaseLinearRecycleView;

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/business/widget/looper/BaseLinearRecycleView;->getDELAYED_TIME()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method
