.class public final Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "NewUserTaskOneVoucherFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "Log6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00128FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Log6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "k",
        "Lid8;",
        "S",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "l",
        "R",
        "()Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "dataFrom",
        "m",
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
.field public static final m:Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->m:Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$1;->INSTANCE:Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->k:Lid8;

    .line 33
    .line 34
    new-instance v0, Lzt9;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lzt9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->l:Lid8;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->T(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;)Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->Q(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;)Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;)Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "keyData"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->S()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lxt9;->a:Lxt9;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Log6;

    .line 20
    .line 21
    iget-object p0, p0, Log6;->e:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "getContext(...)"

    .line 28
    .line 29
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, p1}, Lxt9;->a(Landroid/content/Context;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public final R()Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

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
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;->R()Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Log6;

    .line 20
    .line 21
    iget-object p2, p2, Log6;->b:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherAmount()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Log6;

    .line 35
    .line 36
    iget-object p2, p2, Log6;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Log6;

    .line 50
    .line 51
    iget-object p2, p2, Log6;->e:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->enable()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Log6;

    .line 65
    .line 66
    iget-object p2, p2, Log6;->d:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherDescription()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Log6;

    .line 80
    .line 81
    iget-object p2, p2, Log6;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    const-string v0, "tvUse"

    .line 84
    .line 85
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lau9;

    .line 89
    .line 90
    invoke-direct {v0, p0, p1}, Lau9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskOneVoucherFragment;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 91
    .line 92
    .line 93
    const-wide/16 v1, 0x320

    .line 94
    .line 95
    invoke-static {p2, v1, v2, v0}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Log6;

    .line 103
    .line 104
    iget-object p2, p2, Log6;->e:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->enable()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    sget p1, Lteam/opay/pay/R$string;->osdk_use_only:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    sget p1, Lteam/opay/pay/R$string;->osdk_used_only:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void
.end method
