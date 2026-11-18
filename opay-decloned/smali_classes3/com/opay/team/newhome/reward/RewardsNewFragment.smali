.class public final Lcom/opay/team/newhome/reward/RewardsNewFragment;
.super Lcom/opay/team/newhome/reward/Hilt_RewardsNewFragment;
.source "RewardsNewFragment.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsNewFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/RewardsNewFragment;",
        "Lteam/opay/pay/home/OMainFragment;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "<init>",
        "()V",
        "",
        "showFragment",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Lxyf;",
        "onCreateViewBinding",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;",
        "Landroid/view/View;",
        "view",
        "onLayoutFinish",
        "(Landroid/view/View;)V",
        "onCancel",
        "onSuccess",
        "onDestroy",
        "onResume",
        "onPause",
        "Lvh6;",
        "_binding",
        "Lvh6;",
        "getBinding",
        "()Lvh6;",
        "binding",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/opay/team/newhome/reward/RewardsNewFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IS_NEW_PAGE:Ljava/lang/String; = "key_is_new_page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TASK_ID:Ljava/lang/String; = "key_task_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _binding:Lvh6;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsNewFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/RewardsNewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/RewardsNewFragment;->Companion:Lcom/opay/team/newhome/reward/RewardsNewFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/Hilt_RewardsNewFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getBinding()Lvh6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewFragment;->_binding:Lvh6;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final showFragment()V
    .locals 4

    .line 1
    sget-object v0, Lql8;->a:Lql8;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lql8;->h(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget v0, Lteam/opay/pay/R$id;->rewardNewContainer:I

    .line 19
    .line 20
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsGuestFragment;->k:Lcom/opay/team/newhome/reward/RewardsGuestFragment$Companion;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsGuestFragment$Companion;->a()Lcom/opay/team/newhome/reward/RewardsGuestFragment;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p0, v0, v1}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v1, "key_task_id"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const-string v2, "key_is_new_page"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_1
    sget v2, Lteam/opay/pay/R$id;->rewardNewContainer:I

    .line 63
    .line 64
    sget-object v3, Lcom/opay/team/newhome/reward/RewardsLoginedFragment;->t:Lcom/opay/team/newhome/reward/RewardsLoginedFragment$Companion;

    .line 65
    .line 66
    invoke-virtual {v3, v0, v1}, Lcom/opay/team/newhome/reward/RewardsLoginedFragment$Companion;->a(Ljava/lang/String;Z)Lcom/opay/team/newhome/reward/RewardsLoginedFragment;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p0, v2, v0}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 71
    .line 72
    .line 73
    :goto_2
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/RewardsNewFragment;->showFragment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lvh6;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvh6;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewFragment;->_binding:Lvh6;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/RewardsNewFragment;->getBinding()Lvh6;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzl8;->a:Lzl8;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lzl8;->d(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutFinish(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lzl8;->a:Lzl8;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lzl8;->a(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/RewardsNewFragment;->showFragment()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v2, "rewards_native_page_leave"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v2, "rewards_native_page_show"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/RewardsNewFragment;->showFragment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
