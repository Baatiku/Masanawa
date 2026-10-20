.class public final Lteam/opay/pay/settings/profile/ProfileNicknameFragment;
.super Lteam/opay/pay/settings/profile/Hilt_ProfileNicknameFragment;
.source "ProfileNicknameFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;,
        Lteam/opay/pay/settings/profile/ProfileNicknameFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/settings/profile/Hilt_ProfileNicknameFragment<",
        "Lgh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/settings/profile/ProfileNicknameFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lgh6;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "p",
        "Ljava/lang/String;",
        "nickname",
        "Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "q",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "profileViewMode",
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
.field public static final r:Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Ljava/lang/String;

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->r:Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$1;->INSTANCE:Lteam/opay/pay/settings/profile/ProfileNicknameFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/profile/Hilt_ProfileNicknameFragment;-><init>(Lhm6;)V

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
    new-instance v1, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->q:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->T(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->U(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->S(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R()Lteam/opay/pay/settings/profile/ProfileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->q:Lid8;

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

.method public static final S(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lgh6;

    .line 6
    .line 7
    iget-object p0, p0, Lgh6;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgh6;

    .line 6
    .line 7
    iget-object v0, v0, Lgh6;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->R()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lteam/opay/pay/settings/profile/UpdateProfile;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-direct {v2, v3, v0, v4, v3}, Lteam/opay/pay/settings/profile/UpdateProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/profile/ProfileViewModel;->O(Lteam/opay/pay/settings/profile/UpdateProfile;)Landroidx/lifecycle/LiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Le1c;

    .line 41
    .line 42
    invoke-direct {v2, p0, v0}, Le1c;-><init>(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Ls1c;->a:Ls1c;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Lkotlin/Pair;

    .line 52
    .line 53
    const-string v1, "photo_detail_nickname_click_done"

    .line 54
    .line 55
    invoke-virtual {p0, v1, v0}, Ls1c;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lgh6;

    .line 11
    .line 12
    iget-object v0, v0, Lgh6;->e:Lteam/opay/core/android/views/PulseLoaderView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$a;->a:[I

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    aget v0, v1, v0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    const/4 p2, 0x2

    .line 39
    if-eq v0, p2, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 46
    .line 47
    new-instance v3, Lteam/opay/pay/settings/profile/EventNickName;

    .line 48
    .line 49
    invoke-direct {v3, p1}, Lteam/opay/pay/settings/profile/EventNickName;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v2, "nick_name_event"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->R()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2, p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->N(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/Hilt_ProfileNicknameFragment;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    const-string p1, ""

    .line 88
    .line 89
    :cond_4
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v0, "extra_key"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    const-string p1, ""

    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->p:Ljava/lang/String;

    .line 23
    .line 24
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lgh6;

    .line 14
    .line 15
    iget-object p1, p1, Lgh6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string p2, "clear"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lc1c;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lc1c;-><init>(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lgh6;

    .line 35
    .line 36
    iget-object p1, p1, Lgh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    const-string p2, "save"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Ld1c;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Ld1c;-><init>(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)V

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
    check-cast p1, Lgh6;

    .line 56
    .line 57
    iget-object p1, p1, Lgh6;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 58
    .line 59
    new-instance p2, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;-><init>(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lgh6;

    .line 72
    .line 73
    iget-object p1, p1, Lgh6;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 74
    .line 75
    iget-object p2, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->p:Ljava/lang/String;

    .line 76
    .line 77
    if-nez p2, :cond_0

    .line 78
    .line 79
    const-string p2, "nickname"

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p2, 0x0

    .line 85
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Ls1c;->a:Ls1c;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    new-array p2, p2, [Lkotlin/Pair;

    .line 92
    .line 93
    const-string v0, "photo_detail_click_nickname"

    .line 94
    .line 95
    invoke-virtual {p1, v0, p2}, Ls1c;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
