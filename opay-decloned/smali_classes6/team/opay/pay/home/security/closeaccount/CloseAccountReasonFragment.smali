.class public final Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;
.super Lteam/opay/pay/home/security/closeaccount/Hilt_CloseAccountReasonFragment;
.source "CloseAccountReasonFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/home/security/closeaccount/Hilt_CloseAccountReasonFragment<",
        "Lyc6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J!\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\u00072\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lyc6;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "",
        "",
        "list",
        "Y",
        "(Ljava/util/List;)V",
        "V",
        "",
        "status",
        "T",
        "(I)V",
        "Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;",
        "p",
        "Lid8;",
        "X",
        "()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;",
        "viewModel",
        "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
        "q",
        "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
        "selectReason",
        "r",
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
.field public static final r:Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->r:Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$1;->INSTANCE:Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/closeaccount/Hilt_CloseAccountReasonFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->p:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;ILteam/opay/pay/home/security/CancellationResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->U(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;ILteam/opay/pay/home/security/CancellationResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->W(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->b0(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->Z(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->a0(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;ILteam/opay/pay/home/security/CancellationResponse;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 11
    .line 12
    sget-object v1, Lteam/opay/pay/home/security/closeaccount/CloseAccountResultFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseAccountResultFragment$Companion;

    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/home/security/CloseAccountResultData;

    .line 15
    .line 16
    invoke-direct {v2, p2, p1}, Lteam/opay/pay/home/security/CloseAccountResultData;-><init>(Lteam/opay/pay/home/security/CancellationResponse;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/security/closeaccount/CloseAccountResultFragment$Companion;->a(Lteam/opay/pay/home/security/CloseAccountResultData;)Lteam/opay/pay/home/security/closeaccount/CloseAccountResultFragment;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lteam/opay/pay/home/security/UserStatusResponse;

    .line 27
    .line 28
    invoke-virtual {v3}, Lteam/opay/pay/home/security/UserStatusResponse;->getStatus()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;->C()Lteam/opay/core/api/e;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->l()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_1
    if-eqz p1, :cond_3

    .line 66
    .line 67
    sget-object v1, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Lteam/opay/pay/account/verify/ModifyType;->LOG_OFF:Lteam/opay/pay/account/verify/ModifyType;

    .line 74
    .line 75
    new-instance p1, Lteam/opay/core/settings/SettingsStorage;

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/16 v8, 0x18

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    const-string v7, "setting_log_off"

    .line 98
    .line 99
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->b(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->T(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-direct {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;->D(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lteam/opay/pay/home/security/closeaccount/CloseAccountCheckFailedFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseAccountCheckFailedFragment$Companion;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountCheckFailedFragment$Companion;->a()Lteam/opay/pay/home/security/closeaccount/CloseAccountCheckFailedFragment;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 125
    .line 126
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method

.method private final X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Z(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lyc6;

    .line 13
    .line 14
    iget-object p0, p0, Lyc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x5

    .line 31
    if-lt p1, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->Y(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->V()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final T(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lteam/opay/pay/home/security/closeaccount/CancellationReq;

    .line 6
    .line 7
    iget-object v1, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, ""

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :goto_0
    if-nez v1, :cond_2

    .line 31
    .line 32
    :cond_1
    move-object v4, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v4, v1

    .line 35
    :goto_1
    iget-object v1, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v5, 0x1

    .line 44
    if-ne v1, v5, :cond_4

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->q:Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_3
    if-nez v2, :cond_5

    .line 55
    .line 56
    :cond_4
    move-object v5, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move-object v5, v2

    .line 59
    :goto_2
    const/4 v6, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    move-object v1, v7

    .line 63
    move-object v3, v4

    .line 64
    move-object v4, v5

    .line 65
    move v5, v6

    .line 66
    move-object v6, v8

    .line 67
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/home/security/closeaccount/CancellationReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lze2;

    .line 71
    .line 72
    invoke-direct {v1, p0, p1}, Lze2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v7, p0, v1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;->u(Lteam/opay/pay/home/security/closeaccount/CancellationReq;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lbf2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lbf2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;->w(Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Y(Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v5, v2

    .line 21
    check-cast v5, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 24
    .line 25
    const/4 v7, 0x5

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v3, v2

    .line 30
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 38
    .line 39
    const/4 v13, 0x6

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v12, 0x0

    .line 44
    move-object v9, v1

    .line 45
    invoke-direct/range {v9 .. v14}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lyc6;

    .line 56
    .line 57
    iget-object v1, v1, Lyc6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;

    .line 72
    .line 73
    new-instance v3, Laf2;

    .line 74
    .line 75
    move-object/from16 v4, p0

    .line 76
    .line 77
    invoke-direct {v3, v4}, Laf2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v3}, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    const/16 v5, 0xa

    .line 86
    .line 87
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_1

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    move-object v8, v5

    .line 109
    check-cast v8, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 110
    .line 111
    new-instance v5, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 112
    .line 113
    invoke-virtual {v8}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const/16 v15, 0xfc

    .line 118
    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v11, 0x0

    .line 124
    const/4 v12, 0x0

    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    move-object v6, v5

    .line 128
    invoke-direct/range {v6 .. v16}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 142
    .line 143
    const/4 v2, 0x6

    .line 144
    invoke-static {v2}, Ljmf;->d(I)I

    .line 145
    .line 146
    .line 147
    move-result v19

    .line 148
    const/16 v25, 0x78

    .line 149
    .line 150
    const/16 v26, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    const/16 v20, 0x1

    .line 155
    .line 156
    const/16 v21, 0x0

    .line 157
    .line 158
    const/16 v22, 0x0

    .line 159
    .line 160
    const/16 v23, 0x0

    .line 161
    .line 162
    const/16 v24, 0x0

    .line 163
    .line 164
    move-object/from16 v17, v0

    .line 165
    .line 166
    invoke-direct/range {v17 .. v26}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 2
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->LOG_OFF:Lteam/opay/pay/account/verify/ModifyType;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "setting_log_off"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->T(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
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
    invoke-direct {p0}, Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;->X()Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lxe2;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lxe2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0, p2}, Lteam/opay/pay/home/security/closeaccount/CloseAccountViewModel;->y(Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lyc6;

    .line 26
    .line 27
    iget-object p1, p1, Lyc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    const-string p2, "nextButton"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lye2;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lye2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseAccountReasonFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
