.class public final Lteam/opay/pay/coupon/VoucherDialog;
.super Lteam/opay/pay/coupon/Hilt_VoucherDialog;
.source "VoucherDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/coupon/VoucherDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/coupon/Hilt_VoucherDialog<",
        "Ljh3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u0000 12\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R0\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\t\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\"\u00100\u001a\u00020*8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010!\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lteam/opay/pay/coupon/VoucherDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Ljh3;",
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
        "G",
        "()I",
        "Lteam/opay/pay/coupon/VouchersListAdapter;",
        "q",
        "Lteam/opay/pay/coupon/VouchersListAdapter;",
        "mAdapter",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "r",
        "Lkotlin/jvm/functions/Function1;",
        "getGetVoucherClickedCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "Y",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getVoucherClickedCallback",
        "Lkotlin/Function0;",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "getOnReportCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "Z",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onReportCallback",
        "Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "t",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "viewModel",
        "",
        "u",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "v",
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
.field public static final v:Lteam/opay/pay/coupon/VoucherDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public q:Lteam/opay/pay/coupon/VouchersListAdapter;

.field public r:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/coupon/VoucherDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/coupon/VoucherDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/coupon/VoucherDialog;->v:Lteam/opay/pay/coupon/VoucherDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/coupon/VoucherDialog$1;->INSTANCE:Lteam/opay/pay/coupon/VoucherDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/coupon/Hilt_VoucherDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/coupon/VoucherDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->t:Lid8;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->u:Z

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/coupon/VoucherDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/VoucherDialog;->X(Lteam/opay/pay/coupon/VoucherDialog;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/coupon/VoucherDialog;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/VoucherDialog;->U(Lteam/opay/pay/coupon/VoucherDialog;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/coupon/VoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/VoucherDialog;->V(Lteam/opay/pay/coupon/VoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/coupon/VoucherDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/coupon/VoucherDialog;->W(Lteam/opay/pay/coupon/VoucherDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/coupon/VoucherDialog;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/coupon/VoucherDialog;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "mAdapter"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/coupon/VoucherDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/coupon/VoucherDialog;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->s:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 18
    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    const-string p0, "mAdapter"

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method


# virtual methods
.method public G()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x3f400000    # 0.75f

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljmf;->x(IF)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public final T()Lteam/opay/pay/coupon/OpayVoucherViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/VoucherDialog;->r:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/VoucherDialog;->s:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
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
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "getResources(...)"

    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v0, 0x41400000    # 12.0f

    .line 23
    .line 24
    invoke-static {v0}, Lkmf;->O(F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->I(Landroid/content/res/Resources;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "key_from_view_all"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, "key_data_list"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<team.opay.pay.api.QueryVoucherItem>"

    .line 52
    .line 53
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast p2, Ljava/util/ArrayList;

    .line 57
    .line 58
    new-instance v0, Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 59
    .line 60
    invoke-direct {v0}, Lteam/opay/pay/coupon/VouchersListAdapter;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v2, v1

    .line 69
    :goto_0
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-object v3, p0, Lteam/opay/pay/coupon/VoucherDialog;->r:Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lteam/opay/pay/coupon/VouchersListAdapter;->s(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iput-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/pay/coupon/VouchersListAdapter;->r()Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "mAdapter"

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_2
    new-instance v3, Ls2g;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Ls2g;-><init>(Lteam/opay/pay/coupon/VoucherDialog;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lteam/opay/pay/coupon/VouchersListAdapter;->t(Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v0, v1

    .line 110
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljh3;

    .line 115
    .line 116
    iget-object v3, v3, Ljh3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lteam/opay/pay/coupon/VoucherDialog;->q:Lteam/opay/pay/coupon/VouchersListAdapter;

    .line 122
    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :cond_5
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->z()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    new-instance v3, Lt2g;

    .line 145
    .line 146
    invoke-direct {v3, p0}, Lt2g;-><init>(Lteam/opay/pay/coupon/VoucherDialog;)V

    .line 147
    .line 148
    .line 149
    new-instance v4, Lteam/opay/pay/coupon/VoucherDialog$a;

    .line 150
    .line 151
    invoke-direct {v4, v3}, Lteam/opay/pay/coupon/VoucherDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v2, "requireActivity(...)"

    .line 162
    .line 163
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Ljmf;->r(Landroid/content/Context;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    int-to-float v0, v0

    .line 171
    const/high16 v2, 0x43240000    # 164.0f

    .line 172
    .line 173
    invoke-static {v2}, Ljmf;->c(F)F

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    sub-float/2addr v0, v2

    .line 178
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    float-to-int v0, v0

    .line 183
    invoke-virtual {v2, p2, v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->L(Ljava/util/ArrayList;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljh3;

    .line 191
    .line 192
    iget-object v0, v0, Ljh3;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 193
    .line 194
    const-string v2, "close"

    .line 195
    .line 196
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lu2g;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Lu2g;-><init>(Lteam/opay/pay/coupon/VoucherDialog;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 205
    .line 206
    .line 207
    if-nez p1, :cond_6

    .line 208
    .line 209
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance v0, Lv2g;

    .line 218
    .line 219
    invoke-direct {v0, p0}, Lv2g;-><init>(Lteam/opay/pay/coupon/VoucherDialog;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 226
    .line 227
    const/16 p1, 0xa

    .line 228
    .line 229
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_7

    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    check-cast p2, Lteam/opay/pay/api/QueryVoucherItem;

    .line 251
    .line 252
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherBatchId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_7
    sget-object p1, Lx7b;->a:Lx7b;

    .line 261
    .line 262
    const/16 v9, 0x3f

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    const/4 v3, 0x0

    .line 266
    const/4 v4, 0x0

    .line 267
    const/4 v5, 0x0

    .line 268
    const/4 v6, 0x0

    .line 269
    const/4 v7, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->r0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    const-string v0, "voucher_batch_list"

    .line 276
    .line 277
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p0}, Lteam/opay/pay/coupon/VoucherDialog;->T()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->D()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-eqz v0, :cond_8

    .line 290
    .line 291
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :cond_8
    const-string v0, "servicestype"

    .line 296
    .line 297
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/4 v1, 0x2

    .line 302
    new-array v1, v1, [Lkotlin/Pair;

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    aput-object p2, v1, v2

    .line 306
    .line 307
    const/4 p2, 0x1

    .line 308
    aput-object v0, v1, p2

    .line 309
    .line 310
    const-string p2, "common_voucher_list_popup_show"

    .line 311
    .line 312
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 313
    .line 314
    .line 315
    return-void
.end method
