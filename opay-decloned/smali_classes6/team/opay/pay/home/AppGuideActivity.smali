.class public final Lteam/opay/pay/home/AppGuideActivity;
.super Lteam/opay/pay/home/Hilt_AppGuideActivity;
.source "AppGuideActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003R\u001b\u0010\u0010\u001a\u00020\u000b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\r\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/home/AppGuideActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "onBackPressed",
        "Lcia;",
        "e",
        "Lid8;",
        "F",
        "()Lcia;",
        "viewBinding",
        "",
        "f",
        "J",
        "openTime",
        "Lteam/opay/pay/settings/MarketingContentViewModel;",
        "g",
        "G",
        "()Lteam/opay/pay/settings/MarketingContentViewModel;",
        "viewModel",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
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


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->omain_activity_app_guide:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/Hilt_AppGuideActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li00;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Li00;-><init>(Lteam/opay/pay/home/AppGuideActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/AppGuideActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/AppGuideActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/home/AppGuideActivity;->g:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/AppGuideActivity;->I(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/AppGuideActivity;->H(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/home/AppGuideActivity;)Lcia;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/AppGuideActivity;->L(Lteam/opay/pay/home/AppGuideActivity;)Lcia;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/AppGuideActivity;->J(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/home/AppGuideActivity;Lteam/opay/pay/settings/MarketingContentDataRsp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/AppGuideActivity;->K(Lteam/opay/pay/home/AppGuideActivity;Lteam/opay/pay/settings/MarketingContentDataRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string/jumbo v2, "welcome_page_login_click"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lql8;->a:Lql8;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {p1, p0, v1, v2, v1}, Lql8;->l(Lql8;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/opay/team/home/HomeSettingsStorage;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/opay/team/home/HomeSettingsStorage;->y(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final I(Lteam/opay/pay/home/AppGuideActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string/jumbo v2, "welcome_page_signup_click"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lteam/opay/pay/onboarding/OnboardingActivity;->k:Lteam/opay/pay/onboarding/OnboardingActivity$Companion;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, p0, v1}, Lteam/opay/pay/onboarding/OnboardingActivity$Companion;->b(Landroid/app/Activity;Z)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/opay/team/home/HomeSettingsStorage;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/opay/team/home/HomeSettingsStorage;->y(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final J(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->z0()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getFragments(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v4, v2

    .line 32
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v2, v3

    .line 54
    :goto_0
    instance-of p1, v2, Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    move-object v3, v2

    .line 59
    check-cast v3, Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 60
    .line 61
    :cond_2
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/opay/team/newhome/appguide/AppGuideFragment;->C()Lcom/opay/team/newhome/appguide/AppGuideLoopViewPager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/pay/widget/LoopViewPager;->getCurrentItem()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 p1, 0x0

    .line 75
    :goto_1
    add-int/2addr p1, p2

    .line 76
    sget-object v1, Lx7b;->a:Lx7b;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v2, "position"

    .line 83
    .line 84
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-array p2, p2, [Lkotlin/Pair;

    .line 89
    .line 90
    aput-object p1, p2, v0

    .line 91
    .line 92
    const-string/jumbo p1, "welcome_page_skip_click"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Landroid/content/Intent;

    .line 99
    .line 100
    const-class p2, Lteam/opay/pay/home/SplashActivity;

    .line 101
    .line 102
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/opay/team/home/HomeSettingsStorage;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/opay/team/home/HomeSettingsStorage;->y(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static final K(Lteam/opay/pay/home/AppGuideActivity;Lteam/opay/pay/settings/MarketingContentDataRsp;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcia;->h:Landroidx/constraintlayout/widget/Group;

    .line 6
    .line 7
    const-string v1, "tipsGroup"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcia;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/settings/MarketingContentDataRsp;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcia;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    .line 34
    const-string v0, "tipsIcon"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/pay/settings/MarketingContentDataRsp;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x2

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {p0, p1, v2, v0, v1}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static final L(Lteam/opay/pay/home/AppGuideActivity;)Lcia;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcia;->inflate(Landroid/view/LayoutInflater;)Lcia;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public F()Lcia;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/AppGuideActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcia;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G()Lteam/opay/pay/settings/MarketingContentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/AppGuideActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lteam/opay/pay/home/AppGuideActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/Hilt_AppGuideActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string/jumbo v1, "welcome_page_show"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/opay/team/home/ntp/a;->d()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const/16 p1, 0x3e8

    .line 25
    .line 26
    int-to-long v2, p1

    .line 27
    div-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lteam/opay/pay/home/AppGuideActivity;->f:J

    .line 29
    .line 30
    new-instance p1, Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/opay/team/newhome/appguide/AppGuideFragment;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v1, Lteam/opay/pay/R$id;->app_guide_container:I

    .line 44
    .line 45
    const-class v2, Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lcia;->c:Lcom/google/android/material/button/MaterialButton;

    .line 63
    .line 64
    new-instance v1, Le00;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Le00;-><init>(Lteam/opay/pay/home/AppGuideActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lcia;->d:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    new-instance v1, Lf00;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lf00;-><init>(Lteam/opay/pay/home/AppGuideActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lcia;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    new-instance v1, Lg00;

    .line 93
    .line 94
    invoke-direct {v1, p0, p1}, Lg00;-><init>(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lcia;->b:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    new-instance v1, Lteam/opay/pay/home/AppGuideActivity$a;

    .line 113
    .line 114
    invoke-direct {v1, p0, p1}, Lteam/opay/pay/home/AppGuideActivity$a;-><init>(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->G()Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lteam/opay/pay/settings/MarketingContentViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lh00;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lh00;-><init>(Lteam/opay/pay/home/AppGuideActivity;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/pay/home/AppGuideActivity;->G()Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "99"

    .line 141
    .line 142
    invoke-virtual {p1, v0, p0}, Lteam/opay/pay/settings/MarketingContentViewModel;->t(Ljava/lang/String;Lag8;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    div-long/2addr v0, v2

    .line 9
    sget-object v2, Lx7b;->a:Lx7b;

    .line 10
    .line 11
    iget-wide v3, p0, Lteam/opay/pay/home/AppGuideActivity;->f:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "start_time"

    .line 18
    .line 19
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "end_time"

    .line 28
    .line 29
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-wide v5, p0, Lteam/opay/pay/home/AppGuideActivity;->f:J

    .line 34
    .line 35
    sub-long/2addr v0, v5

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "stay_tme"

    .line 41
    .line 42
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x3

    .line 47
    new-array v1, v1, [Lkotlin/Pair;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v3, v1, v5

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    aput-object v4, v1, v3

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    aput-object v0, v1, v3

    .line 57
    .line 58
    const-string/jumbo v0, "welcome_page_stay_time"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-super {p0}, Lteam/opay/pay/home/Hilt_AppGuideActivity;->onDestroy()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
