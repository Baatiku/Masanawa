.class public final Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;
.super Ljava/lang/Object;
.source "HomeReadClipboardTask.kt"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;-><init>(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/home/clipboard/HomeReadClipboardTask$a",
        "Landroidx/lifecycle/e;",
        "Lag8;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
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
.field public final synthetic a:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;->a:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lteam/opay/pay/home/dialog/HomeDialogManager;->f:Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/home/dialog/HomeDialogManager$Companion;->a()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;->a:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 24
    .line 25
    invoke-static {p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->q(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lkotlinx/coroutines/l;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Lkotlinx/coroutines/l;->isActive()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p2, 0x1

    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$a;->a:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 40
    .line 41
    invoke-static {p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->u(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method
