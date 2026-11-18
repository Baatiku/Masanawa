.class public final Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "BankUselessTipsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lz93;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lz93;",
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
        "Lkotlin/Function0;",
        "j",
        "Lkotlin/jvm/functions/Function0;",
        "getOnDismissCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "S",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onDismissCallback",
        "",
        "k",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
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
.field public static final l:Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function0;
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

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->l:Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$1;->INSTANCE:Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->k:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic M(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->R(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->P(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->Q(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final P(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "bank"

    .line 4
    .line 5
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "frompage"

    .line 10
    .line 11
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Lkotlin/Pair;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p0, v1, v2

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    aput-object p1, v1, p0

    .line 23
    .line 24
    const-string p0, "bank_exception_pop_transfer_opay_click"

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFirstJumpUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object p0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 43
    .line 44
    const-class p1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFirstJumpUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, "?OpayTransferSendMoneyActivity_isNewUser="

    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p2, "&OpayTransferSendMoneyActivity_sceneSource=AC_Bank_Abnormal_AA"

    .line 84
    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p4, "ac_bank"

    .line 93
    .line 94
    invoke-interface {p0, p1, p2, p4}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    iget-object p0, p3, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {p3}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 105
    .line 106
    .line 107
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public static final Q(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "bank"

    .line 4
    .line 5
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "frompage"

    .line 10
    .line 11
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Lkotlin/Pair;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p0, v1, v2

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    aput-object p1, v1, p0

    .line 23
    .line 24
    const-string p0, "bank_exception_pop_transfer_another_click"

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getSecondJumpUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 36
    .line 37
    const-class p2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_0
    const-string v0, "ac_bank"

    .line 57
    .line 58
    invoke-interface {p1, p2, p0, v0}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, p3, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method public static final R(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "bank"

    .line 4
    .line 5
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "frompage"

    .line 10
    .line 11
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Lkotlin/Pair;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p0, v1, v2

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    aput-object p1, v1, p0

    .line 23
    .line 24
    const-string p0, "bank_exception_pop_cancel_click"

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p2, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public final S(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->k:Z

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
    const/4 p1, 0x0

    .line 5
    sget v0, Lteam/opay/pay/R$style;->Core_Dialog:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "key_title"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    const-string v0, ""

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v2, "key_content"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v1, p2

    .line 43
    :goto_1
    if-nez v1, :cond_3

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    const-string v3, "key_bank"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v2, p2

    .line 60
    :goto_2
    if-nez v2, :cond_5

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    const-string p2, "key_from"

    .line 70
    .line 71
    invoke-virtual {v3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_6
    if-nez p2, :cond_7

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_7
    move-object v0, p2

    .line 79
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_8

    .line 84
    .line 85
    const-string v3, "key_is_new_user"

    .line 86
    .line 87
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    move v8, p2

    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/4 p2, 0x0

    .line 94
    const/4 v8, 0x0

    .line 95
    :goto_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lz93;

    .line 100
    .line 101
    iget-object p2, p2, Lz93;->f:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lz93;

    .line 111
    .line 112
    iget-object p1, p1, Lz93;->e:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->Companion:Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher$Companion;

    .line 122
    .line 123
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher$Companion;->a()Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_9
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFirstButtonName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const-string v1, "btnConfirm"

    .line 138
    .line 139
    if-eqz p2, :cond_b

    .line 140
    .line 141
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-nez p2, :cond_a

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_a
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Lz93;

    .line 153
    .line 154
    iget-object p2, p2, Lz93;->d:Lcom/google/android/material/button/MaterialButton;

    .line 155
    .line 156
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lz93;

    .line 167
    .line 168
    iget-object p2, p2, Lz93;->d:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFirstButtonName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Lz93;

    .line 183
    .line 184
    iget-object p2, p2, Lz93;->d:Lcom/google/android/material/button/MaterialButton;

    .line 185
    .line 186
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    :goto_6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    check-cast p2, Lz93;

    .line 197
    .line 198
    iget-object p2, p2, Lz93;->b:Lcom/google/android/material/button/MaterialButton;

    .line 199
    .line 200
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getSecondButtonName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFirstButtonName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const-string v3, "tvTips"

    .line 212
    .line 213
    if-eqz p2, :cond_e

    .line 214
    .line 215
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-nez p2, :cond_c

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_c
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFreeTips()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_e

    .line 227
    .line 228
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_d

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_d
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFreeTips()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-nez p2, :cond_e

    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Lz93;

    .line 250
    .line 251
    iget-object p2, p2, Lz93;->g:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    check-cast p2, Lz93;

    .line 264
    .line 265
    iget-object p2, p2, Lz93;->g:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;->getFreeTips()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    check-cast p2, Lz93;

    .line 280
    .line 281
    iget-object p2, p2, Lz93;->g:Landroid/widget/TextView;

    .line 282
    .line 283
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    :goto_8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    check-cast p2, Lz93;

    .line 294
    .line 295
    iget-object p2, p2, Lz93;->d:Lcom/google/android/material/button/MaterialButton;

    .line 296
    .line 297
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v1, Ltl0;

    .line 301
    .line 302
    move-object v3, v1

    .line 303
    move-object v4, v2

    .line 304
    move-object v5, v0

    .line 305
    move-object v6, p1

    .line 306
    move-object v7, p0

    .line 307
    invoke-direct/range {v3 .. v8}, Ltl0;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;Z)V

    .line 308
    .line 309
    .line 310
    invoke-static {p2, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Lz93;

    .line 318
    .line 319
    iget-object p2, p2, Lz93;->b:Lcom/google/android/material/button/MaterialButton;

    .line 320
    .line 321
    const-string v1, "btnCancel"

    .line 322
    .line 323
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v1, Lul0;

    .line 327
    .line 328
    invoke-direct {v1, v2, v0, p1, p0}, Lul0;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/UselessBankTipsSwitcher;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)V

    .line 329
    .line 330
    .line 331
    invoke-static {p2, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lz93;

    .line 339
    .line 340
    iget-object p1, p1, Lz93;->c:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    const/16 p2, 0xa

    .line 346
    .line 347
    invoke-static {p2}, Ljmf;->d(I)I

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 352
    .line 353
    .line 354
    const-string p2, "apply(...)"

    .line 355
    .line 356
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    new-instance p2, Lvl0;

    .line 360
    .line 361
    invoke-direct {p2, v2, v0, p0}, Lvl0;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;)V

    .line 362
    .line 363
    .line 364
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method
