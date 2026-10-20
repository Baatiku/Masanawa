.class public final Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "NewUserTaskMoreVoucherFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "Lng6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lng6;",
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
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "list",
        "Q",
        "(Ljava/util/List;)V",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "k",
        "Lid8;",
        "P",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "viewModel",
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
.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$1;->INSTANCE:Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$1;

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
    new-instance v1, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->k:Lid8;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->R(Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final R(Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->P()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    invoke-virtual {p1, p2, p4}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lxt9;->a:Lxt9;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string p3, "getContext(...)"

    .line 28
    .line 29
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p0}, Lxt9;->a(Landroid/content/Context;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final P()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->k:Lid8;

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

.method public final Q(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherAmount()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v7, -0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x6

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v2, "OFF"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v1, -0x1

    .line 36
    :goto_1
    if-le v1, v7, :cond_1

    .line 37
    .line 38
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherAmount()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 51
    .line 52
    const v4, 0x3f2b851f    # 0.67f

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/16 v5, 0x21

    .line 63
    .line 64
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/text/SpannedString;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherAmount()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    const-string v1, ""

    .line 80
    .line 81
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->setMoneyTrueStr(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
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
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->P()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->N()Lteam/opay/pay/payment/betting/NewUserTaskRsp;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskRsp;->d()Lteam/opay/pay/payment/betting/GuideModuleVo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/GuideModuleVo;->d()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;->Q(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;

    .line 41
    .line 42
    invoke-direct {p2}, Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lyt9;

    .line 49
    .line 50
    invoke-direct {p1, p2, p0}, Lyt9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherAdapter;Lteam/opay/pay/payment/betting/NewUserTaskMoreVoucherFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lng6;

    .line 61
    .line 62
    iget-object p1, p1, Lng6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method
