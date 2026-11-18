.class public final Lteam/opay/pay/pin/AccountSuspendDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "AccountSuspendDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/AccountSuspendDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lxv1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\"\u0010\u001b\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u000e\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012R\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R*\u0010+\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/pin/AccountSuspendDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lxv1;",
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
        "j",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "k",
        "J",
        "setSupportCancelable",
        "supportCancelable",
        "l",
        "getLoginScene",
        "S",
        "loginScene",
        "",
        "m",
        "Ljava/lang/String;",
        "getDialogTip",
        "()Ljava/lang/String;",
        "R",
        "(Ljava/lang/String;)V",
        "dialogTip",
        "Lkotlin/Function0;",
        "n",
        "Lkotlin/jvm/functions/Function0;",
        "getConfirmBlock",
        "()Lkotlin/jvm/functions/Function0;",
        "Q",
        "(Lkotlin/jvm/functions/Function0;)V",
        "confirmBlock",
        "o",
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
.field public static final o:Lteam/opay/pay/pin/AccountSuspendDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lkotlin/jvm/functions/Function0;
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
    new-instance v0, Lteam/opay/pay/pin/AccountSuspendDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/AccountSuspendDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/AccountSuspendDialog;->o:Lteam/opay/pay/pin/AccountSuspendDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/pin/AccountSuspendDialog$1;->INSTANCE:Lteam/opay/pay/pin/AccountSuspendDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->j:Z

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->m:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AccountSuspendDialog;->O(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AccountSuspendDialog;->P(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const-string v2, "suspendlogin_windowcancel"

    .line 9
    .line 10
    new-array v1, v1, [Lkotlin/Pair;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    const-string v2, "suspendpassword_windowcancel"

    .line 19
    .line 20
    new-array v1, v1, [Lkotlin/Pair;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/pin/AccountSuspendDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const-string v2, "suspendlogin_windowcontinue"

    .line 9
    .line 10
    new-array v1, v1, [Lkotlin/Pair;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    const-string v2, "suspendpassword_windowcontinue"

    .line 19
    .line 20
    new-array v1, v1, [Lkotlin/Pair;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->n:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->n:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->m:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->j:Z

    .line 2
    .line 3
    return v0
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
    check-cast p1, Lxv1;

    .line 14
    .line 15
    iget-object p1, p1, Lxv1;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->m:Ljava/lang/String;

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
    check-cast p1, Lxv1;

    .line 27
    .line 28
    iget-object p1, p1, Lxv1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    const-string p2, "cancel"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lyc;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lyc;-><init>(Lteam/opay/pay/pin/AccountSuspendDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lxv1;

    .line 48
    .line 49
    iget-object p1, p1, Lxv1;->c:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    const-string p2, "confirm"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lzc;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lzc;-><init>(Lteam/opay/pay/pin/AccountSuspendDialog;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    iget-boolean p1, p0, Lteam/opay/pay/pin/AccountSuspendDialog;->l:Z

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    sget-object p1, Lx7b;->a:Lx7b;

    .line 70
    .line 71
    const-string v0, "suspendlogin_windowreminder"

    .line 72
    .line 73
    new-array p2, p2, [Lkotlin/Pair;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lx7b;->a:Lx7b;

    .line 80
    .line 81
    const-string v0, "suspendpassword_windowreminder"

    .line 82
    .line 83
    new-array p2, p2, [Lkotlin/Pair;

    .line 84
    .line 85
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method
