.class public final Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;
.super Lteam/opay/pay/transfer/contact/view/dialog/Hilt_TransferToNotOPayUserGuideFragment;
.source "TransferToNotOPayUserGuideFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/transfer/contact/view/dialog/Hilt_TransferToNotOPayUserGuideFragment<",
        "Lwi6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lwi6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "U",
        "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "p",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "dataViewModel",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "R",
        "()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "dispatchData",
        "q",
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
.field public static final q:Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->q:Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->r:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$1;->INSTANCE:Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/view/dialog/Hilt_TransferToNotOPayUserGuideFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->p:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->S(Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->T()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final Q()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->Q()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->r()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final S(Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "aa_transfer_non_opay_users_confirm_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->U()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final T()Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "aa_transfer_non_opay_users_view_refer_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 12
    .line 13
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    sget-object v1, Ld00;->a:Ld00;

    .line 24
    .line 25
    invoke-virtual {v1}, Ld00;->e()Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    sget-object v2, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 35
    .line 36
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->f()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-string v2, ""

    .line 55
    .line 56
    :cond_2
    const-string v3, "aaTransferTrail"

    .line 57
    .line 58
    invoke-interface {v0, v1, v2, v3}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object v0
.end method


# virtual methods
.method public final U()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v9

    .line 5
    if-eqz v9, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;->u:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$Companion;

    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v7, 0x38

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v9

    .line 21
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$Companion;->b(Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$Companion;Landroid/content/Context;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lwi6;

    .line 14
    .line 15
    iget-object p2, p2, Lwi6;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    sget-object v0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->Companion:Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;->a()Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->getTopHint()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->m()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v6, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    move-object v6, v2

    .line 50
    :goto_1
    const/4 v8, 0x4

    .line 51
    const/4 v9, 0x0

    .line 52
    const-string v5, "var_phone"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v1, v3

    .line 61
    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lwi6;

    .line 69
    .line 70
    iget-object p2, p2, Lwi6;->c:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;->a()Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->getBottomHint()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->m()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move-object v6, v0

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    :goto_3
    move-object v6, v2

    .line 100
    :goto_4
    const/4 v8, 0x4

    .line 101
    const/4 v9, 0x0

    .line 102
    const-string v5, "var_phone"

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move-object v0, v3

    .line 111
    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_6

    .line 119
    .line 120
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->k()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    goto :goto_6

    .line 125
    :cond_6
    move-object p2, v3

    .line 126
    :goto_6
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->m()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_7

    .line 137
    :cond_7
    move-object v0, v3

    .line 138
    :goto_7
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->n()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    goto :goto_8

    .line 149
    :cond_8
    move-object v1, v3

    .line 150
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v5, "name = "

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p2, "  phone = "

    .line 164
    .line 165
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p2, " avatar = "

    .line 172
    .line 173
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    if-eqz p2, :cond_9

    .line 184
    .line 185
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->k()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    goto :goto_9

    .line 190
    :cond_9
    move-object p2, v3

    .line 191
    :goto_9
    if-eqz p2, :cond_e

    .line 192
    .line 193
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_a

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_a
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Lwi6;

    .line 205
    .line 206
    iget-object p2, p2, Lwi6;->f:Lr0b;

    .line 207
    .line 208
    iget-object p2, p2, Lr0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->k()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_b
    move-object v0, v2

    .line 224
    :goto_a
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    check-cast p2, Lwi6;

    .line 232
    .line 233
    iget-object p2, p2, Lwi6;->f:Lr0b;

    .line 234
    .line 235
    iget-object p2, p2, Lr0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_c

    .line 242
    .line 243
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->m()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_b

    .line 248
    :cond_c
    move-object v0, v3

    .line 249
    :goto_b
    if-nez v0, :cond_d

    .line 250
    .line 251
    move-object v0, v2

    .line 252
    :cond_d
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lsob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    goto :goto_e

    .line 264
    :cond_e
    :goto_c
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Lwi6;

    .line 269
    .line 270
    iget-object p2, p2, Lwi6;->f:Lr0b;

    .line 271
    .line 272
    iget-object p2, p2, Lr0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->m()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    goto :goto_d

    .line 285
    :cond_f
    move-object v0, v3

    .line 286
    :goto_d
    if-nez v0, :cond_10

    .line 287
    .line 288
    move-object v0, v2

    .line 289
    :cond_10
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0}, Lsob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    check-cast p2, Lwi6;

    .line 305
    .line 306
    iget-object p2, p2, Lwi6;->f:Lr0b;

    .line 307
    .line 308
    iget-object p2, p2, Lr0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->R()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    if-eqz p2, :cond_12

    .line 326
    .line 327
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->n()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    if-nez p2, :cond_11

    .line 332
    .line 333
    goto :goto_f

    .line 334
    :cond_11
    move-object v2, p2

    .line 335
    :cond_12
    :goto_f
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    sget p2, Lteam/opay/pay/R$mipmap;->osdk_ic_transfer_contact_avatar:I

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Ljpc;

    .line 346
    .line 347
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Ljpc;

    .line 352
    .line 353
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 354
    .line 355
    const/16 v0, 0x19

    .line 356
    .line 357
    invoke-static {v0}, Ljmf;->d(I)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->s0(Locf;)Lcom/bumptech/glide/request/RequestOptions;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-virtual {p1, p2}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    check-cast p2, Lwi6;

    .line 377
    .line 378
    iget-object p2, p2, Lwi6;->f:Lr0b;

    .line 379
    .line 380
    iget-object p2, p2, Lr0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 381
    .line 382
    invoke-virtual {p1, p2}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Lwi6;

    .line 390
    .line 391
    iget-object p1, p1, Lwi6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 392
    .line 393
    const-string p2, "confirm"

    .line 394
    .line 395
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    new-instance p2, Lraf;

    .line 399
    .line 400
    invoke-direct {p2, p0}, Lraf;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;)V

    .line 401
    .line 402
    .line 403
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 404
    .line 405
    .line 406
    sget-object p1, Lx7b;->a:Lx7b;

    .line 407
    .line 408
    const/4 p2, 0x0

    .line 409
    new-array p2, p2, [Lkotlin/Pair;

    .line 410
    .line 411
    const-string v0, "aa_transfer_non_opay_users_show"

    .line 412
    .line 413
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 414
    .line 415
    .line 416
    sget-object p1, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 417
    .line 418
    invoke-virtual {p1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-virtual {p2}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 423
    .line 424
    .line 425
    move-result-object p2

    .line 426
    if-eqz p2, :cond_13

    .line 427
    .line 428
    invoke-virtual {p2}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    :cond_13
    if-eqz v3, :cond_15

    .line 433
    .line 434
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 435
    .line 436
    .line 437
    move-result p2

    .line 438
    if-nez p2, :cond_14

    .line 439
    .line 440
    goto :goto_10

    .line 441
    :cond_14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    check-cast p2, Lwi6;

    .line 446
    .line 447
    iget-object p2, p2, Lwi6;->g:Landroid/widget/LinearLayout;

    .line 448
    .line 449
    const-string v0, "marketingTipsContainer"

    .line 450
    .line 451
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    check-cast p2, Lwi6;

    .line 462
    .line 463
    iget-object p2, p2, Lwi6;->b:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-virtual {p1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Lwi6;

    .line 474
    .line 475
    iget-object v0, v0, Lwi6;->b:Landroid/widget/TextView;

    .line 476
    .line 477
    const-string v1, "actTips"

    .line 478
    .line 479
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v0}, Lteam/opay/pay/transfer/TransferActCenter;->h(Landroid/view/View;)Landroid/text/SpannableString;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lwi6;

    .line 494
    .line 495
    iget-object p1, p1, Lwi6;->b:Landroid/widget/TextView;

    .line 496
    .line 497
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance p2, Lsaf;

    .line 501
    .line 502
    invoke-direct {p2}, Lsaf;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 506
    .line 507
    .line 508
    :cond_15
    :goto_10
    return-void
.end method
