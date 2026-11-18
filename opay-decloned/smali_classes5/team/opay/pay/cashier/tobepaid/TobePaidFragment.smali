.class public final Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "TobePaidFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lbme;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lbme;",
        "<init>",
        "()V",
        "",
        "onStart",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "j",
        "Ljava/lang/String;",
        "getOrderNo",
        "()Ljava/lang/String;",
        "setOrderNo",
        "(Ljava/lang/String;)V",
        "orderNo",
        "Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "k",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "paidStorage",
        "l",
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
.field public static final l:Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->l:Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;

    .line 8
    .line 9
    const-string v0, "orderNo"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->m:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$1;->INSTANCE:Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->j:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Lgme;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lgme;-><init>(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->k:Lid8;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->R(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->T(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->S(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final R(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/history/details/TransactionDetailsForIdActivity;->g:Lteam/opay/pay/history/details/TransactionDetailsForIdActivity$Companion;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->j:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "true"

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2, v3}, Lteam/opay/pay/history/details/TransactionDetailsForIdActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->Q()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lpl;->a:Lpl;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Lkotlin/Pair;

    .line 30
    .line 31
    const-string v1, "click_continue_to_pay_confirm"

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lpl;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->Q()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lpl;->a:Lpl;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v1, "click_continue_to_pay_cancel"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lpl;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final Q()Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lteam/opay/pay/R$style;->DialogStyle:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object v2, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->m:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, p1

    .line 28
    :cond_1
    :goto_0
    iput-object v1, p0, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->j:Ljava/lang/String;

    .line 29
    .line 30
    sget-object p1, Lpl;->a:Lpl;

    .line 31
    .line 32
    const-string v1, "show_continue_to_pay"

    .line 33
    .line 34
    new-array v0, v0, [Lkotlin/Pair;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lpl;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/16 v2, 0x11

    .line 32
    .line 33
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    .line 35
    const/4 v2, -0x2

    .line 36
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    .line 38
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    :cond_1
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lbme;

    .line 14
    .line 15
    iget-object p1, p1, Lbme;->b:Landroid/widget/Button;

    .line 16
    .line 17
    const-string p2, "btOk"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lhme;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lhme;-><init>(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lbme;

    .line 35
    .line 36
    iget-object p1, p1, Lbme;->c:Landroid/widget/Button;

    .line 37
    .line 38
    const-string p2, "btResend"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lime;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lime;-><init>(Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
