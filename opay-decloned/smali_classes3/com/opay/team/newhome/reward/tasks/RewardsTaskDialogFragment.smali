.class public final Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;
.super Lcom/opay/team/newhome/base/HomeBaseDialogFragment;
.source "RewardsTaskDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/base/HomeBaseDialogFragment<",
        "Lfia;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R0\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010$\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;",
        "Lcom/opay/team/newhome/base/HomeBaseDialogFragment;",
        "Lfia;",
        "<init>",
        "()V",
        "Lteam/opay/pay/home/MainActivity$Tab;",
        "M",
        "()Lteam/opay/pay/home/MainActivity$Tab;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/opay/team/newhome/reward/TaskItem;",
        "k",
        "Lid8;",
        "S",
        "()Lcom/opay/team/newhome/reward/TaskItem;",
        "taskItem",
        "Lkotlin/Function1;",
        "l",
        "Lkotlin/jvm/functions/Function1;",
        "getOnActivityGoClick",
        "()Lkotlin/jvm/functions/Function1;",
        "Y",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onActivityGoClick",
        "Lkotlin/Function0;",
        "m",
        "Lkotlin/jvm/functions/Function0;",
        "getCloseParentSheet",
        "()Lkotlin/jvm/functions/Function0;",
        "X",
        "(Lkotlin/jvm/functions/Function0;)V",
        "closeParentSheet",
        "n",
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
.field public static final n:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/TaskItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->n:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$1;->INSTANCE:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/base/HomeBaseDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsxc;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lsxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->k:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic N(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->W(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->U(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->T(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lcom/opay/team/newhome/reward/TaskItem;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->Z(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lcom/opay/team/newhome/reward/TaskItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->V(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S()Lcom/opay/team/newhome/reward/TaskItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/reward/TaskItem;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final T(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final U(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardType()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne v0, v1, :cond_4

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardSubType()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v0, "requireContext(...)"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getJumpUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_0
    if-nez v0, :cond_3

    .line 64
    .line 65
    const-string v0, ""

    .line 66
    .line 67
    :cond_3
    move-object v3, v0

    .line 68
    const/4 v0, 0x0

    .line 69
    new-array v7, v0, [Lkotlin/Pair;

    .line 70
    .line 71
    const/16 v8, 0x1c

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-static/range {v1 .. v9}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->m:Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget-object p0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->l:Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method

.method public static final V(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

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
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/TaskItem;->getJumpUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    new-array v6, v3, [Lkotlin/Pair;

    .line 30
    .line 31
    const/16 v7, 0x1c

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->m:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static final W(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

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
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/TaskItem;->getJumpUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    new-array v6, v3, [Lkotlin/Pair;

    .line 30
    .line 31
    const/16 v7, 0x1c

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->m:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static final Z(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)Lcom/opay/team/newhome/reward/TaskItem;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "key_task_item"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/opay/team/newhome/reward/TaskItem;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    instance-of v1, p0, Lcom/opay/team/newhome/reward/TaskItem;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_1
    return-object v0
.end method


# virtual methods
.method public M()Lteam/opay/pay/home/MainActivity$Tab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->REWARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/TaskItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->l:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lfia;

    .line 14
    .line 15
    iget-object p1, p1, Lfia;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string p2, "close"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Loxc;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Loxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lfia;

    .line 35
    .line 36
    iget-object v0, p1, Lfia;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    const-string p1, "image"

    .line 39
    .line 40
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 p2, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskIcon()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object p1, p2

    .line 56
    :goto_0
    const-string v6, ""

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    move-object v1, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v1, p1

    .line 63
    :goto_1
    sget v2, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v0 .. v5}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lfia;

    .line 76
    .line 77
    iget-object p1, p1, Lfia;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskTitle()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-object v0, p2

    .line 91
    :goto_2
    if-nez v0, :cond_3

    .line 92
    .line 93
    move-object v0, v6

    .line 94
    :cond_3
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lfia;

    .line 106
    .line 107
    iget-object p1, p1, Lfia;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskDesc()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move-object v0, p2

    .line 121
    :goto_3
    if-nez v0, :cond_5

    .line 122
    .line 123
    move-object v0, v6

    .line 124
    :cond_5
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lfia;

    .line 136
    .line 137
    iget-object p1, p1, Lfia;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardAmount()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move-object v0, p2

    .line 151
    :goto_4
    if-nez v0, :cond_7

    .line 152
    .line 153
    move-object v0, v6

    .line 154
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v2, "+"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardIconBig()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_5

    .line 197
    :cond_8
    move-object v0, p2

    .line 198
    :goto_5
    if-nez v0, :cond_9

    .line 199
    .line 200
    move-object v0, v6

    .line 201
    :cond_9
    invoke-virtual {p1, v0}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const/16 v0, 0x28

    .line 206
    .line 207
    invoke-static {v0}, Ljmf;->d(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v0}, Ljmf;->d(I)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    new-instance v2, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;

    .line 216
    .line 217
    invoke-direct {v2, p0, v1, v0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;II)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v2}, Ljpc;->C0(Llfe;)Llfe;

    .line 221
    .line 222
    .line 223
    sget-object p1, Lnyc;->a:Lnyc;

    .line 224
    .line 225
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    const/4 v0, 0x1

    .line 234
    const/4 v1, 0x0

    .line 235
    const-string v2, "confirm"

    .line 236
    .line 237
    if-eq p1, v0, :cond_16

    .line 238
    .line 239
    const/4 v0, 0x2

    .line 240
    if-eq p1, v0, :cond_13

    .line 241
    .line 242
    const/4 v0, 0x3

    .line 243
    if-eq p1, v0, :cond_10

    .line 244
    .line 245
    const/4 v0, 0x4

    .line 246
    if-eq p1, v0, :cond_f

    .line 247
    .line 248
    const/4 v0, 0x5

    .line 249
    if-eq p1, v0, :cond_c

    .line 250
    .line 251
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lfia;

    .line 256
    .line 257
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 258
    .line 259
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_a

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    :cond_a
    if-nez p2, :cond_b

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_b
    move-object v6, p2

    .line 273
    :goto_6
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lfia;

    .line 281
    .line 282
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 283
    .line 284
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance p2, Lrxc;

    .line 288
    .line 289
    invoke-direct {p2, p0}, Lrxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)V

    .line 290
    .line 291
    .line 292
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_b

    .line 296
    .line 297
    :cond_c
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Lfia;

    .line 302
    .line 303
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 304
    .line 305
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_d

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    :cond_d
    if-nez p2, :cond_e

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_e
    move-object v6, p2

    .line 319
    :goto_7
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Lfia;

    .line 327
    .line 328
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 329
    .line 330
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance p2, Lqxc;

    .line 334
    .line 335
    invoke-direct {p2, p0}, Lqxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)V

    .line 336
    .line 337
    .line 338
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_b

    .line 342
    .line 343
    :cond_f
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    check-cast p1, Lfia;

    .line 348
    .line 349
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 350
    .line 351
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Lfia;

    .line 359
    .line 360
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 361
    .line 362
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    sget p2, Lteam/opay/pay/R$color;->osdk_color_e0f7ee:I

    .line 366
    .line 367
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    if-eqz p1, :cond_19

    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/TaskItem;->getCountDownCopyWriting()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    if-eqz p1, :cond_19

    .line 381
    .line 382
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    check-cast p2, Lfia;

    .line 387
    .line 388
    iget-object p2, p2, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 389
    .line 390
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_b

    .line 394
    .line 395
    :cond_10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Lfia;

    .line 400
    .line 401
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 402
    .line 403
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    :cond_11
    if-nez p2, :cond_12

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_12
    move-object v6, p2

    .line 417
    :goto_8
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    check-cast p1, Lfia;

    .line 425
    .line 426
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 427
    .line 428
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    sget p2, Lteam/opay/pay/R$color;->color_always_1dcf9f:I

    .line 432
    .line 433
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    check-cast p1, Lfia;

    .line 441
    .line 442
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 443
    .line 444
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance p2, Lpxc;

    .line 448
    .line 449
    invoke-direct {p2, p0}, Lpxc;-><init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;)V

    .line 450
    .line 451
    .line 452
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_b

    .line 456
    .line 457
    :cond_13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Lfia;

    .line 462
    .line 463
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 464
    .line 465
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lfia;

    .line 473
    .line 474
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 475
    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    sget v1, Lteam/opay/pay/R$color;->osdk_color_C5C5C5:I

    .line 481
    .line 482
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    check-cast p1, Lfia;

    .line 498
    .line 499
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 500
    .line 501
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    if-eqz v0, :cond_14

    .line 506
    .line 507
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    :cond_14
    if-nez p2, :cond_15

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_15
    move-object v6, p2

    .line 515
    :goto_9
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    check-cast p1, Lfia;

    .line 524
    .line 525
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 526
    .line 527
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    check-cast p1, Lfia;

    .line 535
    .line 536
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 537
    .line 538
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    sget v0, Lteam/opay/pay/R$color;->osdk_color_C5C5C5:I

    .line 542
    .line 543
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Lfia;

    .line 551
    .line 552
    iget-object p1, p1, Lfia;->e:Lcom/google/android/material/button/MaterialButton;

    .line 553
    .line 554
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->S()Lcom/opay/team/newhome/reward/TaskItem;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    if-eqz v0, :cond_17

    .line 559
    .line 560
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getButtonCopy()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    :cond_17
    if-nez p2, :cond_18

    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_18
    move-object v6, p2

    .line 568
    :goto_a
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    .line 570
    .line 571
    :cond_19
    :goto_b
    return-void
.end method
