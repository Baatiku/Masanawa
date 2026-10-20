.class public final Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;
.super Lteam/opay/pay/kyc/base/dialog/Hilt_KycDobErrorDialog;
.source "KycDobErrorDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/dialog/Hilt_KycDobErrorDialog<",
        "Lvxa;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lvxa;",
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
        "calendarField",
        "",
        "P",
        "(I)Ljava/lang/String;",
        "Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;",
        "o",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;",
        "errorDobInfo",
        "p",
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
.field public static final p:Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->p:Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$1;->INSTANCE:Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/dialog/Hilt_KycDobErrorDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkv7;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkv7;-><init>(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->o:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->O(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->R(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;
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
    const-string v0, "key_dob_error"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final P(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string v0, "****"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "**"

    .line 8
    .line 9
    :goto_0
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->Q()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;->getInputDob()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v2, v3

    .line 24
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->Q()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;->getChannelDob()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object v4, v3

    .line 36
    :goto_2
    invoke-virtual {v1, v2, v4, p1}, Lteam/opay/pay/kyc/a;->r(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->Q()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;->getChannelDob()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_4
    invoke-virtual {v1, v3, p1}, Lteam/opay/pay/kyc/a;->o(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_3
    return-object v0
.end method

.method public final Q()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    check-cast p1, Lvxa;

    .line 14
    .line 15
    iget-object p1, p1, Lvxa;->n:Landroid/widget/TextView;

    .line 16
    .line 17
    sget p2, Lteam/opay/pay/R$string;->osdk_kyc_dob_error_title:I

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lvxa;

    .line 31
    .line 32
    iget-object p1, p1, Lvxa;->m:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->Q()Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p2, 0x0

    .line 46
    :goto_0
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, ""

    .line 49
    .line 50
    :cond_1
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_verify_dob_end:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lvxa;

    .line 79
    .line 80
    iget-object p1, p1, Lvxa;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->P(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lvxa;

    .line 95
    .line 96
    iget-object p1, p1, Lvxa;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    const/4 p2, 0x2

    .line 99
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->P(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lvxa;

    .line 111
    .line 112
    iget-object p1, p1, Lvxa;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    const/4 p2, 0x5

    .line 115
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->P(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lvxa;

    .line 127
    .line 128
    iget-object p1, p1, Lvxa;->b:Lcom/google/android/material/button/MaterialButton;

    .line 129
    .line 130
    const-string p2, "btOk"

    .line 131
    .line 132
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Ljv7;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Ljv7;-><init>(Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
