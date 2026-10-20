.class public final Lteam/opay/pay/pin/Guide2SignUpFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "Guide2SignUpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lce6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR0\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0019\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/pin/Guide2SignUpFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lce6;",
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
        "Lkotlin/Function1;",
        "",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "getOnOkButtonClick",
        "()Lkotlin/jvm/functions/Function1;",
        "R",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onOkButtonClick",
        "k",
        "Z",
        "isEmail",
        "()Z",
        "Q",
        "(Z)V",
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
.field public static final l:Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
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
    new-instance v0, Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/Guide2SignUpFragment;->l:Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/pin/Guide2SignUpFragment$1;->INSTANCE:Lteam/opay/pay/pin/Guide2SignUpFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/Guide2SignUpFragment;->O(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/Guide2SignUpFragment;->P(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;
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
    sget-object v1, Luqe;->a:Luqe;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v2, v2, [Lkotlin/Pair;

    .line 11
    .line 12
    const-string v3, "login_window_signup_click"

    .line 13
    .line 14
    invoke-virtual {v1, v0, v3, v2}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/pin/Guide2SignUpFragment;->j:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/pin/Guide2SignUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/pin/Guide2SignUpFragment;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/Guide2SignUpFragment;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Luqe;->a:Luqe;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lkotlin/Pair;

    .line 14
    .line 15
    const-string v2, "login_window_show"

    .line 16
    .line 17
    invoke-virtual {v0, p1, v2, v1}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 18
    .line 19
    .line 20
    :cond_0
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
    iget-boolean p1, p0, Lteam/opay/pay/pin/Guide2SignUpFragment;->k:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lce6;

    .line 18
    .line 19
    iget-object p1, p1, Lce6;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    sget p2, Lteam/opay/pay/R$string;->sign_up_email_tip:I

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lce6;

    .line 35
    .line 36
    iget-object p1, p1, Lce6;->e:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    sget p2, Lteam/opay/pay/R$string;->osdk_re_enter:I

    .line 39
    .line 40
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lce6;

    .line 52
    .line 53
    iget-object p1, p1, Lce6;->e:Lcom/google/android/material/button/MaterialButton;

    .line 54
    .line 55
    const-string p2, "signUpClick"

    .line 56
    .line 57
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Leu6;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Leu6;-><init>(Lteam/opay/pay/pin/Guide2SignUpFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lce6;

    .line 73
    .line 74
    iget-object p1, p1, Lce6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    .line 76
    const-string p2, "ivClose"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Lfu6;

    .line 82
    .line 83
    invoke-direct {p2, p0}, Lfu6;-><init>(Lteam/opay/pay/pin/Guide2SignUpFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
