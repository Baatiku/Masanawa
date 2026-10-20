.class public final Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;
.super Lteam/opay/core/base/BaseSheetInjectFragmentV2;
.source "NewUserTaskVoucherDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2<",
        "Lod3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0017\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00072\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\"\u0010$\u001a\u00020\u00058\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010\tR\"\u0010(\u001a\u00020\u00058\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\"\"\u0004\u0008\'\u0010\tR\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lod3;",
        "<init>",
        "()V",
        "",
        "arrow",
        "",
        "V",
        "(Z)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "bottomSheet",
        "",
        "newState",
        "N",
        "(Landroid/view/View;I)V",
        "",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "list",
        "W",
        "(Ljava/util/List;)V",
        "Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;",
        "a0",
        "()Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;",
        "U",
        "()I",
        "l",
        "Z",
        "getSupportDragging",
        "()Z",
        "setSupportDragging",
        "supportDragging",
        "m",
        "getSupportDraggable",
        "setSupportDraggable",
        "supportDraggable",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "n",
        "Lid8;",
        "T",
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
.field public l:Z

.field public m:Z

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$1;->INSTANCE:Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->l:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->m:Z

    .line 10
    .line 11
    const-class v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$2;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->n:Lid8;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->Z(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->b0(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->Y(Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->X(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->n:Lid8;

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

.method private final V(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lod3;

    .line 25
    .line 26
    iget-object v0, v0, Lod3;->b:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lod3;

    .line 47
    .line 48
    iget-object v0, v0, Lod3;->b:Landroid/widget/ImageView;

    .line 49
    .line 50
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_ic_security_dialog_arrow:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lod3;

    .line 60
    .line 61
    iget-object v0, v0, Lod3;->b:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lod3;

    .line 80
    .line 81
    iget-object v0, v0, Lod3;->b:Landroid/widget/ImageView;

    .line 82
    .line 83
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_ic_security_dialog_ling:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lod3;

    .line 93
    .line 94
    iget-object v0, v0, Lod3;->b:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public static final X(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Y(Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->c()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string p2, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 p0, 0x0

    .line 31
    new-array v6, p0, [Lkotlin/Pair;

    .line 32
    .line 33
    const/16 v7, 0x1c

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public static final Z(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lod3;

    .line 6
    .line 7
    iget-object p0, p0, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget v0, Lteam/opay/pay/R$id;->arrow:I

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->turnMaxLine()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getNoActivate()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    sget-object p2, Lxt9;->a:Lxt9;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const-string p4, "getContext(...)"

    .line 45
    .line 46
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3, p0}, Lxt9;->a(Landroid/content/Context;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public N(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseSheetFragment;->N(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->V(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->V(Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final U()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->e0()Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lod3;

    .line 14
    .line 15
    invoke-virtual {v1}, Lod3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "getContext(...)"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lgmf;->c(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x2

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->e()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    const/4 v3, 0x3

    .line 61
    if-le v0, v3, :cond_1

    .line 62
    .line 63
    div-int/lit8 v1, v1, 0x5

    .line 64
    .line 65
    int-to-float v0, v1

    .line 66
    const/high16 v1, 0x40400000    # 3.0f

    .line 67
    .line 68
    mul-float v0, v0, v1

    .line 69
    .line 70
    float-to-int v2, v0

    .line 71
    :cond_1
    return v2
.end method

.method public final W(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->e0()Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/high16 v0, 0x42800000    # 64.0f

    .line 19
    .line 20
    invoke-static {v0}, Ljmf;->c(F)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "requireActivity(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljmf;->r(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    const/high16 v2, 0x42e00000    # 112.0f

    .line 41
    .line 42
    invoke-static {v2}, Ljmf;->c(F)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-float/2addr v1, v2

    .line 47
    sub-float/2addr v1, v0

    .line 48
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    float-to-int v1, v1

    .line 53
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->A0(Ljava/util/List;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final a0()Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Leu9;

    .line 7
    .line 8
    invoke-direct {v1, v0, p0}, Leu9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lod3;

    .line 19
    .line 20
    iget-object v1, v1, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
            "NotifyDataSetChanged"
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lod3;

    .line 14
    .line 15
    iget-object p1, p1, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lod3;

    .line 33
    .line 34
    iget-object p2, p2, Lod3;->f:Landroid/widget/TextView;

    .line 35
    .line 36
    new-instance v0, Lbu9;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lbu9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->e0()Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x1

    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_10

    .line 56
    .line 57
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->g()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v4, "getResources(...)"

    .line 62
    .line 63
    const/4 v5, -0x2

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 67
    .line 68
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->y0(Landroid/content/res/Resources;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lod3;

    .line 87
    .line 88
    iget-object p1, p1, Lod3;->g:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    .line 95
    .line 96
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move-object v3, v2

    .line 102
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->d()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_10

    .line 120
    .line 121
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->e()Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_10

    .line 126
    .line 127
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    xor-int/2addr p2, v1

    .line 132
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->setNoActivate(Z)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p2, p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->P(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 140
    .line 141
    .line 142
    new-array p2, v1, [Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 143
    .line 144
    aput-object p1, p2, v0

    .line 145
    .line 146
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->a0()Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->W(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_c

    .line 161
    .line 162
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->f()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->U()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 173
    .line 174
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lod3;

    .line 179
    .line 180
    iget-object p1, p1, Lod3;->g:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_3

    .line 187
    .line 188
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->c()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    goto :goto_1

    .line 193
    :cond_3
    move-object v3, v2

    .line 194
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_4

    .line 202
    .line 203
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->d()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_2

    .line 208
    :cond_4
    move-object p1, v2

    .line 209
    :goto_2
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v5}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->y0(Landroid/content/res/Resources;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v3, :cond_5

    .line 228
    .line 229
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->e()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-eqz v3, :cond_5

    .line 234
    .line 235
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_5

    .line 244
    .line 245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 250
    .line 251
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    xor-int/2addr v5, v1

    .line 256
    invoke-virtual {v4, v5}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->setNoActivate(Z)V

    .line 257
    .line 258
    .line 259
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5, v4}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->P(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->a0()Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    if-eqz v4, :cond_6

    .line 276
    .line 277
    invoke-virtual {v4}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->e()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    goto :goto_4

    .line 282
    :cond_6
    move-object v4, v2

    .line 283
    :goto_4
    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    if-eqz p2, :cond_7

    .line 291
    .line 292
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->e()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    :cond_7
    invoke-virtual {p0, v2}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->W(Ljava/util/List;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    move-object v2, p1

    .line 300
    goto/16 :goto_c

    .line 301
    .line 302
    :cond_8
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->a()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_10

    .line 307
    .line 308
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 309
    .line 310
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lod3;

    .line 315
    .line 316
    iget-object p1, p1, Lod3;->g:Landroid/widget/TextView;

    .line 317
    .line 318
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-eqz v3, :cond_9

    .line 323
    .line 324
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->c()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    goto :goto_6

    .line 329
    :cond_9
    move-object v3, v2

    .line 330
    :goto_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-eqz p1, :cond_a

    .line 338
    .line 339
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->d()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    goto :goto_7

    .line 344
    :cond_a
    move-object p1, v2

    .line 345
    :goto_7
    new-instance v3, Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;

    .line 346
    .line 347
    invoke-direct {v3}, Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    if-eqz v4, :cond_b

    .line 355
    .line 356
    invoke-virtual {v4}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->a()Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    if-eqz v4, :cond_b

    .line 361
    .line 362
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    goto :goto_8

    .line 367
    :cond_b
    const/4 v4, 0x0

    .line 368
    :goto_8
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-eqz v5, :cond_d

    .line 373
    .line 374
    invoke-virtual {v5}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->a()Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    if-eqz v5, :cond_d

    .line 379
    .line 380
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_d

    .line 389
    .line 390
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    check-cast v6, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;

    .line 395
    .line 396
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    xor-int/2addr v7, v1

    .line 401
    invoke-virtual {v6, v7}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->e(Z)V

    .line 402
    .line 403
    .line 404
    if-le v4, v1, :cond_c

    .line 405
    .line 406
    const/4 v7, 0x1

    .line 407
    goto :goto_a

    .line 408
    :cond_c
    const/4 v7, 0x0

    .line 409
    :goto_a
    invoke-virtual {v6, v7}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->d(Z)V

    .line 410
    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_d
    new-instance v5, Lcu9;

    .line 414
    .line 415
    invoke-direct {v5, v3, p0}, Lcu9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    check-cast v5, Lod3;

    .line 426
    .line 427
    iget-object v5, v5, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 428
    .line 429
    if-le v4, v1, :cond_e

    .line 430
    .line 431
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Lod3;

    .line 436
    .line 437
    iget-object v4, v4, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 438
    .line 439
    const-string v6, "rvList"

    .line 440
    .line 441
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const/high16 v6, 0x41400000    # 12.0f

    .line 445
    .line 446
    invoke-static {v6}, Ljmf;->c(F)F

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    float-to-int v6, v6

    .line 451
    invoke-static {v4, v6}, Lizf;->a(Landroid/view/View;I)V

    .line 452
    .line 453
    .line 454
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 455
    .line 456
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    check-cast v6, Lod3;

    .line 461
    .line 462
    iget-object v6, v6, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 463
    .line 464
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    const/4 v7, 0x2

    .line 469
    invoke-direct {v4, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 470
    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_e
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 474
    .line 475
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    check-cast v6, Lod3;

    .line 480
    .line 481
    iget-object v6, v6, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 482
    .line 483
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    invoke-direct {v4, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 488
    .line 489
    .line 490
    :goto_b
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    check-cast v4, Lod3;

    .line 498
    .line 499
    iget-object v4, v4, Lod3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 500
    .line 501
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    if-eqz p2, :cond_f

    .line 509
    .line 510
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->a()Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    :cond_f
    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_5

    .line 518
    .line 519
    :cond_10
    :goto_c
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    check-cast p1, Lod3;

    .line 524
    .line 525
    iget-object p1, p1, Lod3;->e:Landroid/widget/TextView;

    .line 526
    .line 527
    const-string p2, "tvDesc"

    .line 528
    .line 529
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    if-eqz v2, :cond_12

    .line 533
    .line 534
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    if-nez v3, :cond_11

    .line 539
    .line 540
    goto :goto_d

    .line 541
    :cond_11
    const/4 v3, 0x0

    .line 542
    goto :goto_e

    .line 543
    :cond_12
    :goto_d
    const/4 v3, 0x1

    .line 544
    :goto_e
    const/16 v4, 0x8

    .line 545
    .line 546
    if-nez v3, :cond_13

    .line 547
    .line 548
    const/4 v3, 0x0

    .line 549
    goto :goto_f

    .line 550
    :cond_13
    const/16 v3, 0x8

    .line 551
    .line 552
    :goto_f
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    check-cast p1, Lod3;

    .line 560
    .line 561
    iget-object p1, p1, Lod3;->c:Landroid/widget/ImageView;

    .line 562
    .line 563
    const-string v3, "ivLogo"

    .line 564
    .line 565
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    if-eqz v2, :cond_15

    .line 569
    .line 570
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-nez v3, :cond_14

    .line 575
    .line 576
    goto :goto_10

    .line 577
    :cond_14
    const/4 v1, 0x0

    .line 578
    :cond_15
    :goto_10
    if-nez v1, :cond_16

    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_16
    const/16 v0, 0x8

    .line 582
    .line 583
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    check-cast p1, Lod3;

    .line 591
    .line 592
    iget-object p1, p1, Lod3;->e:Landroid/widget/TextView;

    .line 593
    .line 594
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-nez p1, :cond_17

    .line 602
    .line 603
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    check-cast p1, Lod3;

    .line 608
    .line 609
    iget-object p1, p1, Lod3;->e:Landroid/widget/TextView;

    .line 610
    .line 611
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    .line 613
    .line 614
    :cond_17
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;->T()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->c0()Landroidx/lifecycle/MutableLiveData;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 623
    .line 624
    .line 625
    move-result-object p2

    .line 626
    new-instance v0, Ldu9;

    .line 627
    .line 628
    invoke-direct {v0, p0}, Ldu9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog;)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$a;

    .line 632
    .line 633
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 637
    .line 638
    .line 639
    return-void
.end method
