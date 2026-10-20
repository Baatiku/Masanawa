.class public final Lteam/opay/business/provider/active/MarqueeSurfaceView$a;
.super Ljava/lang/Object;
.source "MarqueeSurfaceView.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/MarqueeSurfaceView;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/business/provider/active/MarqueeSurfaceView$a",
        "Landroid/view/Choreographer$FrameCallback;",
        "",
        "frameTimeNanos",
        "",
        "doFrame",
        "(J)V",
        "business-provider_release"
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
.field public final synthetic a:Lteam/opay/business/provider/active/MarqueeSurfaceView;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/MarqueeSurfaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/business/provider/active/MarqueeSurfaceView;->g(Lteam/opay/business/provider/active/MarqueeSurfaceView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/business/provider/active/MarqueeSurfaceView;->h(Lteam/opay/business/provider/active/MarqueeSurfaceView;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/business/provider/active/MarqueeSurfaceView;->i(Lteam/opay/business/provider/active/MarqueeSurfaceView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 35
    .line 36
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/business/provider/active/MarqueeSurfaceView;->f(Lteam/opay/business/provider/active/MarqueeSurfaceView;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    iget-object p2, p0, Lteam/opay/business/provider/active/MarqueeSurfaceView$a;->a:Lteam/opay/business/provider/active/MarqueeSurfaceView;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-wide/16 v0, 0x10

    .line 72
    .line 73
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-static {p2}, Lteam/opay/business/provider/active/MarqueeSurfaceView;->j(Lteam/opay/business/provider/active/MarqueeSurfaceView;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    return-void
.end method
