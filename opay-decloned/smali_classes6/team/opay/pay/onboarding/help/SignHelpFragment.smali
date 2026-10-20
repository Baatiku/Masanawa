.class public final Lteam/opay/pay/onboarding/help/SignHelpFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "SignHelpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lbi6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/help/SignHelpFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lbi6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/help/SignHelpFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/help/SignHelpFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/help/SignHelpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/help/SignHelpFragment;->R(Lteam/opay/pay/onboarding/help/SignHelpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/help/SignHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/onboarding/help/SignHelpFragment;->Q(Lteam/opay/pay/onboarding/help/SignHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Q(Lteam/opay/pay/onboarding/help/SignHelpFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-class p3, Lteam/opay/pay/pin/NoNetWorkActivity;

    .line 10
    .line 11
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lteam/opay/pay/onboarding/help/HelpDetailFragment;

    .line 19
    .line 20
    invoke-direct {p1}, Lteam/opay/pay/onboarding/help/HelpDetailFragment;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "position"

    .line 29
    .line 30
    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lteam/opay/core/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    sget p3, Lteam/opay/pay/R$id;->fragment_container:I

    .line 44
    .line 45
    invoke-static {p2, p3, p1, p0}, Lli2;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public static final R(Lteam/opay/pay/onboarding/help/SignHelpFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lkotlin/Pair;

    .line 7
    .line 8
    const-string v1, "register_help"

    .line 9
    .line 10
    invoke-static {p0, v1, v0}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    new-instance p1, Lteam/opay/pay/onboarding/help/HelpData;

    .line 10
    .line 11
    sget p2, Lteam/opay/pay/R$mipmap;->osdk_no_net_icon:I

    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$string;->help_no_net_item:I

    .line 14
    .line 15
    invoke-direct {p1, p2, v0}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lteam/opay/pay/onboarding/help/HelpData;

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_no_otp_icon:I

    .line 21
    .line 22
    sget v1, Lteam/opay/pay/R$string;->help_no_otp_item:I

    .line 23
    .line 24
    invoke-direct {p2, v0, v1}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpData;

    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_no_face_icon:I

    .line 30
    .line 31
    sget v2, Lteam/opay/pay/R$string;->help_face_issues_item:I

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/onboarding/help/HelpData;-><init>(II)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    new-array v1, v1, [Lteam/opay/pay/onboarding/help/HelpData;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    aput-object p1, v1, v2

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    aput-object p2, v1, p1

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    aput-object v0, v1, p1

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lbi6;

    .line 57
    .line 58
    iget-object p2, p2, Lbi6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lteam/opay/pay/onboarding/help/HelpAdapter;

    .line 73
    .line 74
    invoke-direct {v0}, Lteam/opay/pay/onboarding/help/HelpAdapter;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lipd;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lipd;-><init>(Lteam/opay/pay/onboarding/help/SignHelpFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lbi6;

    .line 96
    .line 97
    iget-object p1, p1, Lbi6;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    .line 99
    const-string p2, "hotlineView"

    .line 100
    .line 101
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 105
    .line 106
    const-string v1, "register_help"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lbi6;

    .line 120
    .line 121
    iget-object p1, p1, Lbi6;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance p2, Ljpd;

    .line 127
    .line 128
    invoke-direct {p2, p0}, Ljpd;-><init>(Lteam/opay/pay/onboarding/help/SignHelpFragment;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
