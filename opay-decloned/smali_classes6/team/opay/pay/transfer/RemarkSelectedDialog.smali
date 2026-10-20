.class public final Lteam/opay/pay/transfer/RemarkSelectedDialog;
.super Lteam/opay/core/base/BaseSheetInjectFragmentV2;
.source "RemarkSelectedDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/RemarkSelectedDialog$RemarksAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2<",
        "Lbe3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u000f8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R0\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/pay/transfer/RemarkSelectedDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lbe3;",
        "<init>",
        "()V",
        "",
        "G",
        "()I",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "l",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "m",
        "I",
        "setSupportBgTransparent",
        "supportBgTransparent",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/transfer/RemarkConfigData;",
        "n",
        "Lkotlin/jvm/functions/Function1;",
        "getOnRemarkSelectedCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "U",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onRemarkSelectedCallback",
        "Lteam/opay/pay/cashier/result/RemarkViewModel;",
        "o",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/cashier/result/RemarkViewModel;",
        "viewModel",
        "RemarksAdapter",
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

.field public n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/RemarkConfigData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/RemarkSelectedDialog$1;->INSTANCE:Lteam/opay/pay/transfer/RemarkSelectedDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->m:Z

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/cashier/result/RemarkViewModel;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$2;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->o:Lid8;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/RemarkSelectedDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog;->T(Lteam/opay/pay/transfer/RemarkSelectedDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/transfer/RemarkSelectedDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transfer/RemarkSelectedDialog;->S(Lteam/opay/pay/transfer/RemarkSelectedDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final S(Lteam/opay/pay/transfer/RemarkSelectedDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog;->R()Lteam/opay/pay/cashier/result/RemarkViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/RemarkViewModel;->s()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_2

    .line 16
    .line 17
    if-ne v0, p3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog;->R()Lteam/opay/pay/cashier/result/RemarkViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/RemarkViewModel;->s()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lteam/opay/pay/transfer/RemarkConfigData;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lteam/opay/pay/transfer/RemarkConfigData;->setSelect(Z)V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->n:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final T(Lteam/opay/pay/transfer/RemarkSelectedDialog;)Lkotlin/Unit;
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


# virtual methods
.method public G()I
    .locals 2

    .line 1
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

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
    const/high16 v1, 0x3f000000    # 0.5f

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
    iget-boolean v0, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R()Lteam/opay/pay/cashier/result/RemarkViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/result/RemarkViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final U(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/pay/transfer/RemarkConfigData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/RemarkSelectedDialog;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lbe3;

    .line 14
    .line 15
    iget-object p1, p1, Lbe3;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance p2, Lteam/opay/pay/transfer/RemarkSelectedDialog$RemarksAdapter;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/transfer/RemarkSelectedDialog;->R()Lteam/opay/pay/cashier/result/RemarkViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/RemarkViewModel;->s()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p2, p0, v0}, Lteam/opay/pay/transfer/RemarkSelectedDialog$RemarksAdapter;-><init>(Lteam/opay/pay/transfer/RemarkSelectedDialog;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lamc;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lamc;-><init>(Lteam/opay/pay/transfer/RemarkSelectedDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lbe3;

    .line 46
    .line 47
    iget-object p1, p1, Lbe3;->b:Landroid/widget/ImageView;

    .line 48
    .line 49
    const-string p2, "close"

    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Lbmc;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lbmc;-><init>(Lteam/opay/pay/transfer/RemarkSelectedDialog;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
