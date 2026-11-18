.class public final Lteam/opay/face/dialog/OFaceFailedCommonFragment;
.super Lteam/opay/face/dialog/Hilt_OFaceFailedCommonFragment;
.source "OFaceFailedCommonFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/dialog/OFaceFailedCommonFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003R*\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceFailedCommonFragment;",
        "Lteam/opay/face/dialog/BaseOFaceFailedFragment;",
        "<init>",
        "()V",
        "",
        "U",
        "T",
        "Lkotlin/Function0;",
        "u",
        "Lkotlin/jvm/functions/Function0;",
        "getCheckIdInfoClick",
        "()Lkotlin/jvm/functions/Function0;",
        "n0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "checkIdInfoClick",
        "",
        "v",
        "Lid8;",
        "l0",
        "()Ljava/lang/Boolean;",
        "isRegister",
        "w",
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
.field public static final w:Lteam/opay/face/dialog/OFaceFailedCommonFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public u:Lkotlin/jvm/functions/Function0;
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

.field public final v:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/face/dialog/OFaceFailedCommonFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/dialog/OFaceFailedCommonFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->w:Lteam/opay/face/dialog/OFaceFailedCommonFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/face/dialog/Hilt_OFaceFailedCommonFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw3a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lw3a;-><init>(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->v:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic g0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->m0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->k0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->j0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v1, "oface_recognize_failed_confirm_button_click"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final k0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->l0()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->u:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Lkotlin/Pair;

    .line 41
    .line 42
    const-string v1, "oface_recognize_failed_returnidpage_click"

    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final m0(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_dialog_re_enter_id"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method


# virtual methods
.method public T()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfxa;

    .line 6
    .line 7
    iget-object v0, v0, Lfxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const-string v1, "dialogCancel"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->l0()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lfxa;

    .line 34
    .line 35
    iget-object v0, v0, Lfxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ly3a;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Ly3a;-><init>(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->l0()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$string;->osdk_it_s_not_mine:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget v0, Lteam/opay/pay/R$string;->osdk_retake_selfie:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lfxa;

    .line 31
    .line 32
    iget-object v1, v1, Lfxa;->f:Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lfxa;

    .line 42
    .line 43
    iget-object v0, v0, Lfxa;->f:Lcom/google/android/material/button/MaterialButton;

    .line 44
    .line 45
    const-string v1, "dialogConfirm"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lx3a;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lx3a;-><init>(Lteam/opay/face/dialog/OFaceFailedCommonFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final l0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->v:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceFailedCommonFragment;->u:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
