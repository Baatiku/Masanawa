.class public final Lteam/opay/pay/home/dialog/HomeDialogManager$b;
.super Ljava/lang/Object;
.source "HomeDialogManager.kt"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeDialogManager;->r(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Lteam/opay/pay/home/dialog/HomeDialogManager;

.field public final synthetic c:Landroidx/fragment/app/DialogFragment;

.field public final synthetic d:Lteam/opay/pay/home/dialog/HomeDialogTask;

.field public final synthetic e:Landroidx/lifecycle/e;

.field public final synthetic f:Lzv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzv1<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lteam/opay/pay/home/dialog/HomeDialogManager;Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogTask;Landroidx/lifecycle/e;Lzv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/pay/home/dialog/HomeDialogManager;",
            "Landroidx/fragment/app/DialogFragment;",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            "Landroidx/lifecycle/e;",
            "Lzv1<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->b:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->c:Landroidx/fragment/app/DialogFragment;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->d:Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->e:Landroidx/lifecycle/e;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->f:Lzv1;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final e(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
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
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->a:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 27
    .line 28
    if-ne p2, p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->b:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->d(Lteam/opay/pay/home/dialog/HomeDialogManager;)Lteam/opay/pay/home/dialog/HomeDialogManager$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->c:Landroidx/fragment/app/DialogFragment;

    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->d:Lteam/opay/pay/home/dialog/HomeDialogTask;

    .line 41
    .line 42
    invoke-interface {p1, p2, v0}, Lteam/opay/pay/home/dialog/HomeDialogManager$a;->a(Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogTask;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 47
    .line 48
    if-ne p2, p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->a:Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->e:Landroidx/lifecycle/e;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$b;->f:Lzv1;

    .line 62
    .line 63
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    .line 65
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p1, p2}, Ljr2;->resumeWith(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method
