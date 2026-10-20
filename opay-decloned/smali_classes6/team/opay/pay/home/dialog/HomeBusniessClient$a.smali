.class public final Lteam/opay/pay/home/dialog/HomeBusniessClient$a;
.super Ljava/lang/Object;
.source "HomeBusniessClient.kt"

# interfaces
.implements Lteam/opay/pay/home/dialog/HomeDialogManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeBusniessClient;->a(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/pay/home/dialog/HomeBusniessClient$a",
        "Lteam/opay/pay/home/dialog/HomeDialogManager$a;",
        "Landroidx/fragment/app/DialogFragment;",
        "dialog",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "task",
        "",
        "a",
        "(Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogTask;)V",
        "",
        "b",
        "(Lteam/opay/pay/home/dialog/HomeDialogTask;)Z",
        "sdk_release"
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
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogTask;)V
    .locals 2

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "task"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "onDialogShow -> "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ", "

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    instance-of p1, p2, Lteam/opay/pay/home/dialog/HomeGuideTask;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public b(Lteam/opay/pay/home/dialog/HomeDialogTask;)Z
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onTaskDialogFinish -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->b:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    instance-of v0, p1, Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->k0()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l0()Lcom/opay/team/newhome/home/ForceMessageData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->k0()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l0()Lcom/opay/team/newhome/home/ForceMessageData;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;->c:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->g0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    instance-of p1, p1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 79
    .line 80
    return p1
.end method
