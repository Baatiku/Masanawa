.class public final Lteam/opay/pay/reward/marketing/MarketingFragment;
.super Lteam/opay/pay/reward/marketing/Hilt_MarketingFragment;
.source "MarketingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/reward/marketing/Hilt_MarketingFragment<",
        "Lkza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0014\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/reward/marketing/MarketingFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lkza;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "o",
        "Lid8;",
        "T",
        "()Ljava/lang/String;",
        "widgetJson",
        "p",
        "R",
        "orderNo",
        "Lteam/opay/pay/reward/marketing/MarketingViewModel;",
        "q",
        "S",
        "()Lteam/opay/pay/reward/marketing/MarketingViewModel;",
        "viewModel",
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
.field public static final r:Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/reward/marketing/MarketingFragment;->r:Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/reward/marketing/MarketingFragment$1;->INSTANCE:Lteam/opay/pay/reward/marketing/MarketingFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/reward/marketing/Hilt_MarketingFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lxs8;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lxs8;-><init>(Lteam/opay/pay/reward/marketing/MarketingFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->o:Lid8;

    .line 16
    .line 17
    new-instance v0, Lys8;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lys8;-><init>(Lteam/opay/pay/reward/marketing/MarketingFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->p:Lid8;

    .line 27
    .line 28
    new-instance v0, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$2;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-class v1, Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$3;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$4;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$5;

    .line 62
    .line 63
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/reward/marketing/MarketingFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->q:Lid8;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->V(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/reward/marketing/MarketingFragment;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/reward/marketing/MarketingFragment;->U(Lteam/opay/pay/reward/marketing/MarketingFragment;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->W(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/reward/marketing/MarketingFragment;Lteam/opay/pay/reward/marketing/MarketingDataRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/reward/marketing/MarketingDataRsp;->getTemplate()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    sget v0, Lteam/opay/pay/R$id;->marketing_container:I

    .line 16
    .line 17
    sget-object v1, Lteam/opay/pay/reward/marketing/TemplateOneFragment;->r:Lteam/opay/pay/reward/marketing/TemplateOneFragment$Companion;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->R()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, p1, v2}, Lteam/opay/pay/reward/marketing/TemplateOneFragment$Companion;->a(Lteam/opay/pay/reward/marketing/MarketingDataRsp;Ljava/lang/String;)Lteam/opay/pay/reward/marketing/TemplateOneFragment;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x2

    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    sget v0, Lteam/opay/pay/R$id;->marketing_container:I

    .line 45
    .line 46
    sget-object v1, Lteam/opay/pay/reward/marketing/TemplateTwoFragment;->v:Lteam/opay/pay/reward/marketing/TemplateTwoFragment$Companion;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->R()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, p1, v2}, Lteam/opay/pay/reward/marketing/TemplateTwoFragment$Companion;->a(Lteam/opay/pay/reward/marketing/MarketingDataRsp;Ljava/lang/String;)Lteam/opay/pay/reward/marketing/TemplateTwoFragment;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    .line 66
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;
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
    const-string v0, "key_order_no"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    const-string p0, ""

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/reward/marketing/MarketingFragment;)Ljava/lang/String;
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
    const-string v0, "key_marketing_data"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final S()Lteam/opay/pay/reward/marketing/MarketingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    sget-object p1, Lx7b;->a:Lx7b;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    new-array p2, p2, [Lkotlin/Pair;

    .line 13
    .line 14
    const-string v0, "payment_result_marketing_show"

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->S()Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->T()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1, p2}, Lteam/opay/pay/reward/marketing/MarketingViewModel;->s(Ljava/lang/String;)Lteam/opay/pay/reward/marketing/MarketingDataRsp;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/reward/marketing/MarketingFragment;->S()Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/reward/marketing/MarketingViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Lzs8;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lzs8;-><init>(Lteam/opay/pay/reward/marketing/MarketingFragment;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lteam/opay/pay/reward/marketing/MarketingFragment$a;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lteam/opay/pay/reward/marketing/MarketingFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
