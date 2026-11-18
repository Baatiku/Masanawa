.class public final Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "ReversalDetailDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\u000e2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "K",
        "()I",
        "J",
        "L",
        "",
        "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
        "list",
        "Z",
        "(Ljava/util/List;)V",
        "Ls66;",
        "p",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "W",
        "()Ls66;",
        "binding",
        "q",
        "Companion",
        "business-transfer-flow_release"
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
.field public static final q:Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic r:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowDialogReversalDetailBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->r:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->q:Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseSheetFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Ls66;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic T(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->X(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->a0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->Y(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final Y(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final a0(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getLink()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    move-object v2, p1

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public J()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3f59999a    # 0.85f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public K()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3f59999a    # 0.85f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public L()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final W()Ls66;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->r:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ls66;

    .line 13
    .line 14
    return-object v0
.end method

.method public final Z(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lteam/opay/business/transfer/flow/api/TransactionEntity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->isDivider()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v0, Lteam/opay/business/transfer/flow/widget/FlowDetailLineView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/widget/FlowDetailLineView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v2, v1, v2}, Lteam/opay/business/transfer/flow/widget/FlowDetailLineView;->a(Lteam/opay/business/transfer/flow/widget/FlowDetailLineView;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v1, v3}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Llsc;

    .line 50
    .line 51
    invoke-direct {v3, p0, v0}, Llsc;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;Lteam/opay/business/transfer/flow/api/TransactionEntity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v2, v3}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->g(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/api/TransactionEntity;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    move-object v0, v1

    .line 58
    :goto_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->W()Ls66;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Ls66;->d:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    const/4 v3, -0x2

    .line 66
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->W()Ls66;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ls66;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->W()Ls66;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ls66;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    .line 15
    const-string p2, "dialogClose"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Ljsc;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Ljsc;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->W()Ls66;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ls66;->b:Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    const-string p2, "actionConfirm"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lksc;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lksc;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    const/16 v1, 0x21

    .line 57
    .line 58
    const-string v2, "details"

    .line 59
    .line 60
    if-lt v0, v1, :cond_0

    .line 61
    .line 62
    :try_start_1
    const-class v0, Lteam/opay/business/transfer/flow/api/TransactionEntity;

    .line 63
    .line 64
    invoke-static {p1, v2, v0}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    instance-of v0, p1, Lteam/opay/business/transfer/flow/api/TransactionEntity;

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    move-object p1, p2

    .line 78
    :cond_1
    check-cast p1, Lteam/opay/business/transfer/flow/api/TransactionEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-object p1, p2

    .line 82
    :goto_0
    check-cast p1, Lteam/opay/business/transfer/flow/api/TransactionEntity;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object p1, p2

    .line 86
    :goto_1
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v0, p2

    .line 94
    :goto_2
    if-nez v0, :cond_4

    .line 95
    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    if-eqz p1, :cond_6

    .line 111
    .line 112
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    :cond_6
    invoke-virtual {p0, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/ReversalDetailDialog;->Z(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
