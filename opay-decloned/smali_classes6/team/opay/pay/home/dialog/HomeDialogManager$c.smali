.class public final Lteam/opay/pay/home/dialog/HomeDialogManager$c;
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

.field public final synthetic b:Landroidx/fragment/app/DialogFragment;

.field public final synthetic c:Lteam/opay/pay/home/dialog/HomeDialogManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;Lteam/opay/pay/home/dialog/HomeDialogManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->c:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->a:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->z0()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->a:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 36
    .line 37
    invoke-static {p1, p2}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->c:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->e(Lteam/opay/pay/home/dialog/HomeDialogManager;)Landroidx/lifecycle/e;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 59
    .line 60
    if-ne p2, p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->a:Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 65
    .line 66
    invoke-static {p1, p2}, Lteam/opay/pay/base/FragmentKt;->k(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 71
    .line 72
    if-ne p2, p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->c:Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 75
    .line 76
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->e(Lteam/opay/pay/home/dialog/HomeDialogManager;)Landroidx/lifecycle/e;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeDialogManager$c;->b:Landroidx/fragment/app/DialogFragment;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method
