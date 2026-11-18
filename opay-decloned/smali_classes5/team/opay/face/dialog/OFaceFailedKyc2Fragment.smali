.class public final Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;
.super Lteam/opay/face/dialog/Hilt_OFaceFailedKyc2Fragment;
.source "OFaceFailedKyc2Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;",
        "Lteam/opay/face/dialog/BaseOFaceFailedFragment;",
        "<init>",
        "()V",
        "",
        "U",
        "T",
        "d0",
        "",
        "f0",
        "()Z",
        "Lkotlin/Function0;",
        "u",
        "Lkotlin/jvm/functions/Function0;",
        "getManualReviewClick",
        "()Lkotlin/jvm/functions/Function0;",
        "n0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "manualReviewClick",
        "Lteam/opay/pay/kyc/base/KycExtensions;",
        "v",
        "Lid8;",
        "m0",
        "()Lteam/opay/pay/kyc/base/KycExtensions;",
        "extensions",
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
.field public static final w:Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;
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
    new-instance v0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->w:Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/face/dialog/Hilt_OFaceFailedKyc2Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La4a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, La4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->v:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic g0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->l0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lteam/opay/pay/kyc/base/KycExtensions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->j0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->k0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->u:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Lkotlin/Pair;

    .line 13
    .line 14
    const-string v1, "oface_recognize_failed_manualreview_click"

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final k0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v1, "oface_recognize_failed_retakeselfie_click"

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

.method public static final l0(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "key_extension"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v0

    .line 16
    :goto_0
    instance-of v1, p0, Lteam/opay/pay/kyc/base/KycExtensions;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lteam/opay/pay/kyc/base/KycExtensions;

    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method private final m0()Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->v:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycExtensions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->X()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getFaceManualReviewEnum()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "RECOMMEND_MANUAL_REVIEW"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lfxa;

    .line 26
    .line 27
    iget-object v0, v0, Lfxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    sget v1, Lteam/opay/pay/R$string;->osdk_manual_review:I

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lc4a;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lc4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lfxa;

    .line 58
    .line 59
    iget-object v0, v0, Lfxa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 60
    .line 61
    const-string v1, "dialogCancel"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public U()V
    .locals 2

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
    iget-object v0, v0, Lfxa;->f:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->osdk_retake_selfie:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lb4a;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lb4a;-><init>(Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public d0()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Lfxa;

    .line 8
    .line 9
    iget-object v2, v2, Lfxa;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->m0()Lteam/opay/pay/kyc/base/KycExtensions;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/KycExtensions;->getCopyWriterIdType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v4

    .line 24
    :goto_0
    const-string v5, ""

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move-object v3, v5

    .line 29
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lfxa;

    .line 37
    .line 38
    iget-object v2, v2, Lfxa;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->m0()Lteam/opay/pay/kyc/base/KycExtensions;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/KycExtensions;->getCopyWriterIdNumber()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v3, v4

    .line 52
    :goto_1
    if-nez v3, :cond_3

    .line 53
    .line 54
    move-object v3, v5

    .line 55
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->m0()Lteam/opay/pay/kyc/base/KycExtensions;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycExtensions;->getCopyWriterFirstName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move-object v2, v4

    .line 70
    :goto_2
    if-nez v2, :cond_5

    .line 71
    .line 72
    move-object v2, v5

    .line 73
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lfxa;

    .line 78
    .line 79
    iget-object v3, v3, Lfxa;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->m0()Lteam/opay/pay/kyc/base/KycExtensions;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycExtensions;->getCopyWriterMiddle()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    move-object v2, v4

    .line 96
    :goto_3
    if-nez v2, :cond_7

    .line 97
    .line 98
    move-object v2, v5

    .line 99
    :cond_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lfxa;

    .line 104
    .line 105
    iget-object v3, v3, Lfxa;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    const-string v6, "infoMiddleNameKey"

    .line 108
    .line 109
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-lez v6, :cond_8

    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    goto :goto_4

    .line 120
    :cond_8
    const/4 v6, 0x0

    .line 121
    :goto_4
    invoke-static {v3, v6}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lfxa;

    .line 129
    .line 130
    iget-object v3, v3, Lfxa;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const-string v6, "infoMiddleNameValue"

    .line 133
    .line 134
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-lez v6, :cond_9

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    const/4 v6, 0x0

    .line 146
    :goto_5
    invoke-static {v3, v6}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lfxa;

    .line 154
    .line 155
    iget-object v3, v3, Lfxa;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->m0()Lteam/opay/pay/kyc/base/KycExtensions;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_a

    .line 165
    .line 166
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycExtensions;->getCopyWriterLastName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_6

    .line 171
    :cond_a
    move-object v2, v4

    .line 172
    :goto_6
    if-nez v2, :cond_b

    .line 173
    .line 174
    move-object v2, v5

    .line 175
    :cond_b
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lfxa;

    .line 180
    .line 181
    iget-object v3, v3, Lfxa;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Lfxa;

    .line 191
    .line 192
    iget-object v2, v2, Lfxa;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    sget v3, Lteam/opay/pay/R$string;->osdk_face_verification_bottom_tips:I

    .line 195
    .line 196
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->X()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    if-eqz v6, :cond_c

    .line 201
    .line 202
    invoke-virtual {v6}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getIdTypeValue()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    :cond_c
    if-nez v4, :cond_d

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_d
    move-object v5, v4

    .line 210
    :goto_7
    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v5, v0, v1

    .line 213
    .line 214
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public f0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/face/dialog/BaseOFaceFailedFragment;->X()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getFaceManualReviewEnum()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "RECOMMEND_MANUAL_REVIEW"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
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
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;->u:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
