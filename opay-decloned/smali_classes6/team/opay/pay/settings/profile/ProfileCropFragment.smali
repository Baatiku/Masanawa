.class public Lteam/opay/pay/settings/profile/ProfileCropFragment;
.super Lteam/opay/pay/settings/profile/Hilt_ProfileCropFragment;
.source "ProfileCropFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;,
        Lteam/opay/pay/settings/profile/ProfileCropFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/settings/profile/Hilt_ProfileCropFragment<",
        "Leh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/settings/profile/ProfileCropFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Leh6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "p",
        "Lid8;",
        "U",
        "()Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "profileViewMode",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "q",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "T",
        "()Lteam/opay/core/android/arch/AppExecutors;",
        "setAppExecutors",
        "(Lteam/opay/core/android/arch/AppExecutors;)V",
        "appExecutors",
        "",
        "r",
        "Z",
        "hasPop",
        "s",
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
.field public static final s:Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/core/android/arch/AppExecutors;

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->s:Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/settings/profile/ProfileCropFragment$1;->INSTANCE:Lteam/opay/pay/settings/profile/ProfileCropFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/profile/Hilt_ProfileCropFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->p:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->X(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->W(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->V(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->Y(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->Z(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/settings/profile/ProfileCropFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->F(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->T()Lteam/opay/core/android/arch/AppExecutors;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Li0c;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Li0c;-><init>(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Leh6;

    .line 10
    .line 11
    iget-object v1, v1, Leh6;->c:Lteam/opay/pay/settings/profile/view/ClipViewLayout;

    .line 12
    .line 13
    const-string v2, "crop"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->t(Lteam/opay/pay/settings/profile/view/ClipViewLayout;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->T()Lteam/opay/core/android/arch/AppExecutors;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lj0c;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lj0c;-><init>(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ls1c;->a:Ls1c;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Lkotlin/Pair;

    .line 45
    .line 46
    const-string v1, "photo_detail_photo_click_done"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Ls1c;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final Y(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/settings/profile/UpdateProfile;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v1, v2, v4, v3, v4}, Lteam/opay/pay/settings/profile/UpdateProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->L(Lteam/opay/pay/settings/profile/UpdateProfile;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lk0c;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lk0c;-><init>(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final Z(Lteam/opay/pay/settings/profile/ProfileCropFragment;Landroid/net/Uri;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lteam/opay/pay/settings/profile/ProfileCropFragment$a;->a:[I

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aget v3, v4, v3

    .line 29
    .line 30
    const-string v4, "kyc"

    .line 31
    .line 32
    const-string v5, "source"

    .line 33
    .line 34
    const-string v6, ""

    .line 35
    .line 36
    if-eq v3, v1, :cond_5

    .line 37
    .line 38
    if-eq v3, v0, :cond_3

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    if-ne v3, p0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 49
    .line 50
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    sget-object p1, Lx7b;->a:Lx7b;

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lteam/opay/pay/settings/profile/ProfileViewModel;->y()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v5, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 69
    .line 70
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->k()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    new-array v0, v0, [Lkotlin/Pair;

    .line 83
    .line 84
    aput-object v3, v0, v2

    .line 85
    .line 86
    aput-object v4, v0, v1

    .line 87
    .line 88
    const-string v1, "account_photo_upload_error"

    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v2}, Lteam/opay/pay/settings/profile/ProfileViewModel;->F(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/Hilt_ProfileCropFragment;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    move-object v6, p1

    .line 112
    :goto_0
    invoke-static {p0, v6}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_5
    sget-object v3, Lx7b;->a:Lx7b;

    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Lteam/opay/pay/settings/profile/ProfileViewModel;->y()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v5, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    sget-object v7, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 132
    .line 133
    invoke-virtual {v7}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lteam/opay/core/account/AccountInfoManager;->k()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v4, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    new-array v0, v0, [Lkotlin/Pair;

    .line 146
    .line 147
    aput-object v5, v0, v2

    .line 148
    .line 149
    aput-object v4, v0, v1

    .line 150
    .line 151
    const-string v4, "account_photo_upload_success"

    .line 152
    .line 153
    invoke-virtual {v3, v4, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 154
    .line 155
    .line 156
    sget-object v7, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 157
    .line 158
    new-instance v9, Lteam/opay/pay/settings/profile/EnentAvatar;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v9, v0, v3}, Lteam/opay/pay/settings/profile/EnentAvatar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/4 v11, 0x4

    .line 172
    const/4 v12, 0x0

    .line 173
    const-string v8, "avatar_update_event"

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    invoke-static/range {v7 .. v12}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lteam/opay/pay/settings/profile/UpdateProfileResponse;

    .line 188
    .line 189
    if-eqz v3, :cond_6

    .line 190
    .line 191
    invoke-virtual {v3}, Lteam/opay/pay/settings/profile/UpdateProfileResponse;->b()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-nez v3, :cond_7

    .line 196
    .line 197
    :cond_6
    move-object v3, v6

    .line 198
    :cond_7
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Lteam/opay/pay/settings/profile/UpdateProfileResponse;

    .line 203
    .line 204
    if-eqz p2, :cond_9

    .line 205
    .line 206
    invoke-virtual {p2}, Lteam/opay/pay/settings/profile/UpdateProfileResponse;->a()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    if-nez p2, :cond_8

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_8
    move-object v6, p2

    .line 214
    :cond_9
    :goto_1
    invoke-virtual {v0, v3, v6}, Lteam/opay/pay/settings/profile/ProfileViewModel;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p2, p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->G(Landroid/net/Uri;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v2}, Lteam/opay/pay/settings/profile/ProfileViewModel;->F(Z)V

    .line 229
    .line 230
    .line 231
    iget-boolean p1, p0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->r:Z

    .line 232
    .line 233
    if-eqz p1, :cond_a

    .line 234
    .line 235
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_a
    iput-boolean v1, p0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->r:Z

    .line 239
    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    if-eqz p0, :cond_b

    .line 245
    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-eqz p0, :cond_b

    .line 251
    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->i1()V

    .line 253
    .line 254
    .line 255
    :cond_b
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 256
    .line 257
    return-object p0
.end method


# virtual methods
.method public final T()Lteam/opay/core/android/arch/AppExecutors;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->q:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "appExecutors"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final U()Lteam/opay/pay/settings/profile/ProfileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileCropFragment;->U()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->A()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Leh6;

    .line 24
    .line 25
    iget-object p2, p2, Leh6;->c:Lteam/opay/pay/settings/profile/view/ClipViewLayout;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lteam/opay/pay/settings/profile/view/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Leh6;

    .line 35
    .line 36
    iget-object p1, p1, Leh6;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    const-string p2, "cancel"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lg0c;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lg0c;-><init>(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Leh6;

    .line 56
    .line 57
    iget-object p1, p1, Leh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    const-string p2, "done"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Lh0c;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Lh0c;-><init>(Lteam/opay/pay/settings/profile/ProfileCropFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
