.class public final Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "KycIdVerifyOneButtonDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Laya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u0000 +2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u001d\u0010\u0017\u001a\u0004\u0018\u00010\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R(\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010&\u001a\u00020 8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010*\u001a\u00020 8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Laya;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "name",
        "X",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "k",
        "Lid8;",
        "T",
        "()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "info",
        "Lkotlin/Function0;",
        "l",
        "Lkotlin/jvm/functions/Function0;",
        "getOnCancelClick",
        "()Lkotlin/jvm/functions/Function0;",
        "Z",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCancelClick",
        "",
        "m",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "n",
        "J",
        "setSupportCancelable",
        "supportCancelable",
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
.field public static final o:Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final k:Lid8;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->o:Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$1;->INSTANCE:Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lo18;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lo18;-><init>(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->k:Lid8;

    .line 16
    .line 17
    new-instance v0, Lp18;

    .line 18
    .line 19
    invoke-direct {v0}, Lp18;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->m:Z

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->V(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->Y()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic R(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->U(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->W(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
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
    const-string v1, "key_dialog_info"

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
    instance-of v1, p0, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    invoke-static {p1, v1, v0}, Lh6e;->c(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private static final Y()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final initView()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getIdTypeValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, ""

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    move-object v0, v2

    .line 19
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Laya;

    .line 24
    .line 25
    iget-object v3, v3, Laya;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    const-string v4, "dialogClose"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lm18;

    .line 33
    .line 34
    invoke-direct {v4, p0}, Lm18;-><init>(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "dialogTitle"

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Laya;

    .line 59
    .line 60
    iget-object v5, v5, Laya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Laya;

    .line 70
    .line 71
    iget-object v3, v3, Laya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Laya;

    .line 85
    .line 86
    iget-object v3, v3, Laya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "dialogMessage"

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getContent()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Laya;

    .line 113
    .line 114
    iget-object v5, v5, Laya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-static {v3}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Laya;

    .line 128
    .line 129
    iget-object v3, v3, Laya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Laya;

    .line 143
    .line 144
    iget-object v3, v3, Laya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Laya;

    .line 157
    .line 158
    iget-object v3, v3, Laya;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    sget v4, Lteam/opay/pay/R$string;->osdk_kyc_id_dialog_confirm_id_title:I

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    new-array v5, v5, [Ljava/lang/Object;

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    aput-object v0, v5, v6

    .line 167
    .line 168
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Laya;

    .line 180
    .line 181
    iget-object v0, v0, Laya;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_4

    .line 188
    .line 189
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getIdNumberValue()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    goto :goto_3

    .line 194
    :cond_4
    move-object v3, v1

    .line 195
    :goto_3
    if-nez v3, :cond_5

    .line 196
    .line 197
    move-object v3, v2

    .line 198
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Laya;

    .line 206
    .line 207
    iget-object v0, v0, Laya;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-eqz v3, :cond_6

    .line 214
    .line 215
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getBirthdateValue()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    goto :goto_4

    .line 220
    :cond_6
    move-object v3, v1

    .line 221
    :goto_4
    if-nez v3, :cond_7

    .line 222
    .line 223
    move-object v3, v2

    .line 224
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Laya;

    .line 232
    .line 233
    iget-object v0, v0, Laya;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_8

    .line 240
    .line 241
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getFirstNameValue()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    goto :goto_5

    .line 246
    :cond_8
    move-object v3, v1

    .line 247
    :goto_5
    if-nez v3, :cond_9

    .line 248
    .line 249
    move-object v3, v2

    .line 250
    :cond_9
    invoke-direct {p0, v3}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Laya;

    .line 262
    .line 263
    iget-object v0, v0, Laya;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->T()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-eqz v3, :cond_a

    .line 270
    .line 271
    invoke-virtual {v3}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getLastNameValue()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    goto :goto_6

    .line 276
    :cond_a
    move-object v3, v1

    .line 277
    :goto_6
    if-nez v3, :cond_b

    .line 278
    .line 279
    move-object v3, v2

    .line 280
    :cond_b
    invoke-direct {p0, v3}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Laya;

    .line 292
    .line 293
    iget-object v0, v0, Laya;->b:Lcom/google/android/material/button/MaterialButton;

    .line 294
    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-eqz v3, :cond_c

    .line 300
    .line 301
    const-string v1, "key_button_string"

    .line 302
    .line 303
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    :cond_c
    if-nez v1, :cond_d

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_d
    move-object v2, v1

    .line 311
    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Laya;

    .line 319
    .line 320
    iget-object v0, v0, Laya;->b:Lcom/google/android/material/button/MaterialButton;

    .line 321
    .line 322
    const-string v1, "dialogCancel"

    .line 323
    .line 324
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Ln18;

    .line 328
    .line 329
    invoke-direct {v1, p0}, Ln18;-><init>(Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 333
    .line 334
    .line 335
    return-void
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->l:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->m:Z

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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/task/guardian/KycIdVerifyOneButtonDialog;->initView()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
