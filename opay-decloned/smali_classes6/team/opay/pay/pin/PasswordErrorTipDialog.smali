.class public final Lteam/opay/pay/pin/PasswordErrorTipDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "PasswordErrorTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lvd3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R*\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u001c\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/pin/PasswordErrorTipDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lvd3;",
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
        "Lteam/opay/pay/pin/PinError;",
        "k",
        "Lteam/opay/pay/pin/PinError;",
        "pinErrorData",
        "Lkotlin/Function0;",
        "l",
        "Lkotlin/jvm/functions/Function0;",
        "getForgetCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "U",
        "(Lkotlin/jvm/functions/Function0;)V",
        "forgetCallback",
        "m",
        "getRetryCallback",
        "V",
        "retryCallback",
        "n",
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
.field public static final n:Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Z

.field public k:Lteam/opay/pay/pin/PinError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public m:Lkotlin/jvm/functions/Function0;
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
    new-instance v0, Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->n:Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/pin/PasswordErrorTipDialog$1;->INSTANCE:Lteam/opay/pay/pin/PasswordErrorTipDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/pin/PinError;Lteam/opay/pay/pin/PasswordErrorTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->T(Lteam/opay/pay/pin/PinError;Lteam/opay/pay/pin/PasswordErrorTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->Q(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->R(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->S(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lx7b;->a:Lx7b;

    .line 12
    .line 13
    const-string v0, "Type"

    .line 14
    .line 15
    const-string v1, "forgot"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "status"

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v1, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object p1, v1, v0

    .line 39
    .line 40
    const-string p1, "Password_belocked_window_click"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const-string v0, "Type"

    .line 7
    .line 8
    const-string v1, "forgot"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "status"

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Lkotlin/Pair;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object p1, v1, v0

    .line 32
    .line 33
    const-string p1, "Password_belocked_cancel_click"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lx7b;->a:Lx7b;

    .line 12
    .line 13
    const-string v0, "Type"

    .line 14
    .line 15
    const-string v1, "forgot"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "status"

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v1, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object p1, v1, v0

    .line 39
    .line 40
    const-string p1, "Password_verify_click"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/pin/PinError;Lteam/opay/pay/pin/PasswordErrorTipDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "Type"

    .line 4
    .line 5
    const-string v2, "retry"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "status"

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v2, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object p0, v2, v1

    .line 29
    .line 30
    const-string p0, "Password_verify_click"

    .line 31
    .line 32
    invoke-virtual {v0, p0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p1, Lteam/opay/pay/pin/PasswordErrorTipDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final U(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final V(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
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
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lteam/opay/pay/pin/PinError;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->k:Lteam/opay/pay/pin/PinError;

    .line 21
    .line 22
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->k:Lteam/opay/pay/pin/PinError;

    .line 12
    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lvd3;

    .line 20
    .line 21
    iget-object p2, p2, Lvd3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getTip()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const v3, 0x2bbddae

    .line 39
    .line 40
    .line 41
    const-string v4, "status"

    .line 42
    .line 43
    const-string v5, "btnForgot1"

    .line 44
    .line 45
    const-string v6, "btnRetry"

    .line 46
    .line 47
    if-eq v2, v3, :cond_2

    .line 48
    .line 49
    const v3, 0x2bbddc7

    .line 50
    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    const v3, 0x32bb03b

    .line 55
    .line 56
    .line 57
    if-eq v2, v3, :cond_0

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_0
    const-string v2, "80003"

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    const-string v2, "02070"

    .line 72
    .line 73
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lvd3;

    .line 84
    .line 85
    iget-object p2, p2, Lvd3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    sget v2, Lteam/opay/pay/R$string;->osdk_account_locked:I

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lvd3;

    .line 101
    .line 102
    iget-object p2, p2, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    sget v2, Lteam/opay/pay/R$string;->base_reset_password:I

    .line 105
    .line 106
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Lvd3;

    .line 118
    .line 119
    iget-object p2, p2, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 120
    .line 121
    sget v2, Lteam/opay/pay/R$string;->cancel:I

    .line 122
    .line 123
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Lvd3;

    .line 135
    .line 136
    iget-object p2, p2, Lvd3;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 137
    .line 138
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_account_locked:I

    .line 139
    .line 140
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Lvd3;

    .line 148
    .line 149
    iget-object p2, p2, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 150
    .line 151
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v2, Ls5b;

    .line 155
    .line 156
    invoke-direct {v2, p0, p1}, Ls5b;-><init>(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lvd3;

    .line 167
    .line 168
    iget-object p2, p2, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lt5b;

    .line 174
    .line 175
    invoke-direct {v2, p0, p1}, Lt5b;-><init>(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 179
    .line 180
    .line 181
    sget-object p2, Lx7b;->a:Lx7b;

    .line 182
    .line 183
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-array v1, v1, [Lkotlin/Pair;

    .line 192
    .line 193
    aput-object p1, v1, v0

    .line 194
    .line 195
    const-string p1, "Password_belocked_window_show"

    .line 196
    .line 197
    invoke-virtual {p2, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_2
    const-string v2, "02066"

    .line 202
    .line 203
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-nez p2, :cond_4

    .line 208
    .line 209
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Lvd3;

    .line 218
    .line 219
    iget-object p2, p2, Lvd3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    sget v2, Lteam/opay/pay/R$string;->osdk_password_incorrect:I

    .line 222
    .line 223
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lvd3;

    .line 235
    .line 236
    iget-object p2, p2, Lvd3;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 237
    .line 238
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_account_error:I

    .line 239
    .line 240
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    check-cast p2, Lvd3;

    .line 248
    .line 249
    iget-object p2, p2, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 250
    .line 251
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance v2, Lu5b;

    .line 255
    .line 256
    invoke-direct {v2, p0, p1}, Lu5b;-><init>(Lteam/opay/pay/pin/PasswordErrorTipDialog;Lteam/opay/pay/pin/PinError;)V

    .line 257
    .line 258
    .line 259
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Lvd3;

    .line 267
    .line 268
    iget-object p2, p2, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 269
    .line 270
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Lv5b;

    .line 274
    .line 275
    invoke-direct {v2, p1, p0}, Lv5b;-><init>(Lteam/opay/pay/pin/PinError;Lteam/opay/pay/pin/PasswordErrorTipDialog;)V

    .line 276
    .line 277
    .line 278
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 279
    .line 280
    .line 281
    sget-object p2, Lx7b;->a:Lx7b;

    .line 282
    .line 283
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getType()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    new-array v1, v1, [Lkotlin/Pair;

    .line 292
    .line 293
    aput-object p1, v1, v0

    .line 294
    .line 295
    const-string p1, "Password_verify_show"

    .line 296
    .line 297
    invoke-virtual {p2, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 302
    .line 303
    .line 304
    :goto_1
    return-void
.end method
