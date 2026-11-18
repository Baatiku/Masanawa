.class public final Lteam/opay/face/dialog/OFaceFailedKycOneFragment;
.super Lteam/opay/face/dialog/BaseOFaceFailedFragment;
.source "OFaceFailedKycOneFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/dialog/OFaceFailedKycOneFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003R*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\r\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u001b\u0010\u001a\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceFailedKycOneFragment;",
        "Lteam/opay/face/dialog/BaseOFaceFailedFragment;",
        "<init>",
        "()V",
        "",
        "U",
        "",
        "f0",
        "()Z",
        "T",
        "R",
        "Lkotlin/Function0;",
        "p",
        "Lkotlin/jvm/functions/Function0;",
        "getCheckIdInfoClick",
        "()Lkotlin/jvm/functions/Function0;",
        "p0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "checkIdInfoClick",
        "q",
        "getManualReviewClick",
        "q0",
        "manualReviewClick",
        "r",
        "Lid8;",
        "n0",
        "manualReview",
        "s",
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
.field public static final s:Lteam/opay/face/dialog/OFaceFailedKycOneFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Lkotlin/jvm/functions/Function0;
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

.field public q:Lkotlin/jvm/functions/Function0;
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

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->s:Lteam/opay/face/dialog/OFaceFailedKycOneFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le4a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Le4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->r:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic g0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->o0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic h0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->m0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->l0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->k0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->p:Lkotlin/jvm/functions/Function0;

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
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v1, "oface_recognize_failed_applyid_instruction_click"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final l0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->q:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    const-string v0, "manualReview"

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Y()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v0, v1, v2

    .line 42
    .line 43
    const-string v0, "oface_recognize_failed_confirm_button_click"

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final m0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    const-string v0, "manualReview"

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Y()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v0, v1, v2

    .line 42
    .line 43
    const-string v0, "oface_recognize_failed_returnidpage_click"

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final o0(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->X()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getFaceManualReviewEnum()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    const-string v0, "RECOMMEND_MANUAL_REVIEW"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method


# virtual methods
.method public R()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lfxa;

    .line 12
    .line 13
    iget-object v0, v0, Lfxa;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$string;->osdk_re_enter_id_number:I

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lfxa;

    .line 29
    .line 30
    iget-object v0, v0, Lfxa;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const-string v1, "dialogBottomTipsClick"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lh4a;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lh4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->R()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$string;->osdk_manual_review:I

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget v0, Lteam/opay/pay/R$string;->osdk_it_s_mine:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lfxa;

    .line 25
    .line 26
    iget-object v1, v1, Lfxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lg4a;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lg4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$string;->osdk_retake_selfie:I

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget v0, Lteam/opay/pay/R$string;->osdk_it_s_not_mine:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lfxa;

    .line 25
    .line 26
    iget-object v1, v1, Lfxa;->f:Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lf4a;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lf4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKycOneFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public f0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final n0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->r:Lid8;

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
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final p0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final q0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceFailedKycOneFragment;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
