.class public final Lteam/opay/pay/settings/TransferAmountTipDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "TransferAmountTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/TransferAmountTipDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lxd3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/settings/TransferAmountTipDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lxd3;",
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
        "j",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "",
        "k",
        "Ljava/lang/String;",
        "tip",
        "Lkotlin/Function0;",
        "l",
        "Lkotlin/jvm/functions/Function0;",
        "getOnNext",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnNext",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onNext",
        "m",
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
.field public static final m:Lteam/opay/pay/settings/TransferAmountTipDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Z

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lkotlin/jvm/functions/Function0;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/TransferAmountTipDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/TransferAmountTipDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/TransferAmountTipDialog;->m:Lteam/opay/pay/settings/TransferAmountTipDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/settings/TransferAmountTipDialog$1;->INSTANCE:Lteam/opay/pay/settings/TransferAmountTipDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/settings/TransferAmountTipDialog;->k:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/TransferAmountTipDialog;->O(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/TransferAmountTipDialog;->P(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "top_up_limit_popup_cancel_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/settings/TransferAmountTipDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "top_up_limit_popup_continue_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/settings/TransferAmountTipDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/settings/TransferAmountTipDialog;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "key"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/settings/TransferAmountTipDialog;->k:Ljava/lang/String;

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
    check-cast p1, Lxd3;

    .line 14
    .line 15
    iget-object p1, p1, Lxd3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/settings/TransferAmountTipDialog;->k:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lxd3;

    .line 27
    .line 28
    iget-object p1, p1, Lxd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    sget p2, Lteam/opay/pay/R$string;->osdk_proceed:I

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lxd3;

    .line 44
    .line 45
    iget-object p1, p1, Lxd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 46
    .line 47
    const-string p2, "cancel"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Ld2f;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Ld2f;-><init>(Lteam/opay/pay/settings/TransferAmountTipDialog;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lxd3;

    .line 65
    .line 66
    iget-object p1, p1, Lxd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 67
    .line 68
    const-string p2, "confirm"

    .line 69
    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p2, Le2f;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Le2f;-><init>(Lteam/opay/pay/settings/TransferAmountTipDialog;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lx7b;->a:Lx7b;

    .line 82
    .line 83
    const/4 p2, 0x0

    .line 84
    new-array p2, p2, [Lkotlin/Pair;

    .line 85
    .line 86
    const-string v0, "top_up_limit_popup_show"

    .line 87
    .line 88
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
