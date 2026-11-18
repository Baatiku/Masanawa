.class public abstract Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractSourceOfIncomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lff6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u001b\u0010\u0019\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lff6;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "addObserver",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "Q0",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "D0",
        "A0",
        "Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;",
        "l",
        "Lid8;",
        "C0",
        "()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;",
        "taskViewModel",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "m",
        "B0",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "nodeData",
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
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->l:Lid8;

    .line 49
    .line 50
    new-instance v0, Lb7;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lb7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->m:Lid8;

    .line 60
    .line 61
    return-void
.end method

.method private final B0()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final E0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/KycCommonSelectDialog;->q:Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;->a(Z)Lteam/opay/pay/kyc/KycCommonSelectDialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_annual_select_hint:I

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->a0(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->C()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Z(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->B()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;-><init>(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Y(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lf7;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lf7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->W(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "income"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->L(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lff6;

    .line 18
    .line 19
    iget-object v0, v0, Lff6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final G0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/KycCommonSelectDialog;->q:Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;->a(Z)Lteam/opay/pay/kyc/KycCommonSelectDialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_other_income_select_hint:I

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->a0(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->H()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Z(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->G()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;-><init>(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Y(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lc7;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lc7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->W(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final H0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "income"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->P(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lff6;

    .line 18
    .line 19
    iget-object v0, v0, Lff6;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final I0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/KycCommonSelectDialog;->q:Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;->a(Z)Lteam/opay/pay/kyc/KycCommonSelectDialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_other_source_income_select_hint:I

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->a0(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->C()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Z(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->F()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;-><init>(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Y(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ld7;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Ld7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->W(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final J0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "income"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->O(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lff6;

    .line 18
    .line 19
    iget-object v0, v0, Lff6;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "income_comfirm_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "getViewLifecycleOwner(...)"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->B0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->J(Lag8;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final L0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    sget p1, Lteam/opay/pay/R$id;->other_select_yes:I

    .line 2
    .line 3
    const-string v0, "otherIncomeGroup"

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lff6;

    .line 12
    .line 13
    iget-object p1, p1, Lff6;->o:Landroidx/constraintlayout/widget/Group;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget p1, Lteam/opay/pay/R$id;->other_select_no:I

    .line 26
    .line 27
    if-ne p2, p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lff6;

    .line 34
    .line 35
    iget-object p1, p1, Lff6;->o:Landroidx/constraintlayout/widget/Group;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->P(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lff6;

    .line 56
    .line 57
    iget-object p1, p1, Lff6;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    const-string v0, ""

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->O(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lff6;

    .line 76
    .line 77
    iget-object p1, p1, Lff6;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public static final M0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

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
    invoke-static {p0, p1, v0}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final N0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/KycCommonSelectDialog;->q:Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog$Companion;->a(Z)Lteam/opay/pay/kyc/KycCommonSelectDialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_select_your_occuption:I

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->a0(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->E()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Z(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->D()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/base/IncomeSelectAdapter;-><init>(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->Y(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Le7;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Le7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/KycCommonSelectDialog;->W(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "income"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->N(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lff6;

    .line 18
    .line 19
    iget-object v0, v0, Lff6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->A0()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final P0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->N0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lff6;

    .line 6
    .line 7
    iget-object v0, v0, Lff6;->s:Landroid/widget/RadioGroup;

    .line 8
    .line 9
    new-instance v1, La7;

    .line 10
    .line 11
    invoke-direct {v1, p0}, La7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "REGISTER"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "kyc1_income"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v0, ""

    .line 37
    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_1

    .line 43
    .line 44
    sget-object v1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lff6;

    .line 57
    .line 58
    iget-object v2, v1, Lff6;->z:Lteam/opay/core/android/views/OpayActionBar;

    .line 59
    .line 60
    sget v1, Lteam/opay/pay/R$string;->osdk_help:I

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v1, "getString(...)"

    .line 67
    .line 68
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v5, Lg7;

    .line 72
    .line 73
    invoke-direct {v5, p0, v0}, Lg7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-static/range {v2 .. v7}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lff6;

    .line 87
    .line 88
    iget-object v0, v0, Lff6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    const-string v1, "occuptionInput"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lh7;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lh7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lff6;

    .line 108
    .line 109
    iget-object v0, v0, Lff6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    const-string v1, "annualIncomeInput"

    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Li7;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Li7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lff6;

    .line 129
    .line 130
    iget-object v0, v0, Lff6;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const-string v1, "otherIncomeInput"

    .line 133
    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lj7;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Lj7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lff6;

    .line 150
    .line 151
    iget-object v0, v0, Lff6;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    const-string v1, "otherSourceIncomeInput"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Lk7;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lk7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lff6;

    .line 171
    .line 172
    iget-object v0, v0, Lff6;->h:Landroidx/appcompat/widget/AppCompatButton;

    .line 173
    .line 174
    const-string v1, "nextStep"

    .line 175
    .line 176
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Ll7;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Ll7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->y0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->x0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->J0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->I0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->G0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->E0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->F0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->M0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->P0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->H0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->K0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->L0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->O0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycNameCodeVo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->z0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final x0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->Q0(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final y0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lff6;

    .line 6
    .line 7
    iget-object p0, p0, Lff6;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final z0(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->D()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->B()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lff6;

    .line 34
    .line 35
    iget-object v4, v4, Lff6;->v:Landroid/widget/RadioButton;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->G()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->F()Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    :cond_2
    const/4 v4, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/4 v4, 0x0

    .line 66
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lff6;

    .line 71
    .line 72
    iget-object v5, v5, Lff6;->h:Landroidx/appcompat/widget/AppCompatButton;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public D0()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract Q0(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lm7;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lm7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ln7;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Ln7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->C0()Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lo7;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lo7;-><init>(Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->D0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->initView()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSourceOfIncomeFragment;->addObserver()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    new-array v2, p1, [Lkotlin/Pair;

    .line 20
    .line 21
    const/16 v5, 0xc

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v1, "income_page_show"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v0, p0

    .line 29
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
