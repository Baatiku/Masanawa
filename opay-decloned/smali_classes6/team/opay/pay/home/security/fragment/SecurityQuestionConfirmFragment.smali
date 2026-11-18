.class public final Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "SecurityQuestionConfirmFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Ldd6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001f\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008\u001d\u0010\u0018\"\u0004\u0008\u001e\u0010\u001aR*\u0010\'\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Ldd6;",
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
        "k",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "Lteam/opay/pay/home/security/SecretQuestion;",
        "l",
        "Lteam/opay/pay/home/security/SecretQuestion;",
        "getFirstSecretQuestion",
        "()Lteam/opay/pay/home/security/SecretQuestion;",
        "U",
        "(Lteam/opay/pay/home/security/SecretQuestion;)V",
        "firstSecretQuestion",
        "m",
        "getSecondSecretQuestion",
        "V",
        "secondSecretQuestion",
        "Lkotlin/Function0;",
        "n",
        "Lkotlin/jvm/functions/Function0;",
        "getConfirmBlock",
        "()Lkotlin/jvm/functions/Function0;",
        "T",
        "(Lkotlin/jvm/functions/Function0;)V",
        "confirmBlock",
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


# instance fields
.field public k:Z

.field public l:Lteam/opay/pay/home/security/SecretQuestion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/pay/home/security/SecretQuestion;
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
.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment$1;->INSTANCE:Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment$1;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->k:Z

    .line 10
    .line 11
    new-instance v1, Lteam/opay/pay/home/security/SecretQuestion;

    .line 12
    .line 13
    const/16 v10, 0x7f

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v2, v1

    .line 24
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/home/security/SecretQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->l:Lteam/opay/pay/home/security/SecretQuestion;

    .line 28
    .line 29
    new-instance v1, Lteam/opay/pay/home/security/SecretQuestion;

    .line 30
    .line 31
    const/16 v20, 0x7f

    .line 32
    .line 33
    const/16 v21, 0x0

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    .line 44
    const/16 v19, 0x0

    .line 45
    .line 46
    move-object v12, v1

    .line 47
    invoke-direct/range {v12 .. v21}, Lteam/opay/pay/home/security/SecretQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->m:Lteam/opay/pay/home/security/SecretQuestion;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->S(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->R(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)Lkotlin/Unit;
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
    const-string v2, "security_settings_security_question_confirm"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->n:Lkotlin/jvm/functions/Function0;

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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final T(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->n:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Lteam/opay/pay/home/security/SecretQuestion;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/SecretQuestion;
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
    iput-object p1, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->l:Lteam/opay/pay/home/security/SecretQuestion;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Lteam/opay/pay/home/security/SecretQuestion;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/SecretQuestion;
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
    iput-object p1, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->m:Lteam/opay/pay/home/security/SecretQuestion;

    .line 7
    .line 8
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ldd6;

    .line 14
    .line 15
    iget-object p1, p1, Ldd6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->l:Lteam/opay/pay/home/security/SecretQuestion;

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretQuestion;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ldd6;

    .line 31
    .line 32
    iget-object p1, p1, Ldd6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    iget-object p2, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->l:Lteam/opay/pay/home/security/SecretQuestion;

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretQuestion;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ldd6;

    .line 48
    .line 49
    iget-object p1, p1, Ldd6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    iget-object p2, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->m:Lteam/opay/pay/home/security/SecretQuestion;

    .line 52
    .line 53
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretQuestion;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ldd6;

    .line 65
    .line 66
    iget-object p1, p1, Ldd6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    iget-object p2, p0, Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;->m:Lteam/opay/pay/home/security/SecretQuestion;

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretQuestion;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ldd6;

    .line 82
    .line 83
    iget-object p1, p1, Ldd6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 84
    .line 85
    const-string p2, "icClose"

    .line 86
    .line 87
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p2, Lmcd;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Lmcd;-><init>(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ldd6;

    .line 103
    .line 104
    iget-object p1, p1, Ldd6;->f:Landroidx/appcompat/widget/AppCompatButton;

    .line 105
    .line 106
    const-string p2, "nextStep"

    .line 107
    .line 108
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Lncd;

    .line 112
    .line 113
    invoke-direct {p2, p0}, Lncd;-><init>(Lteam/opay/pay/home/security/fragment/SecurityQuestionConfirmFragment;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lx7b;->a:Lx7b;

    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    new-array p2, p2, [Lkotlin/Pair;

    .line 123
    .line 124
    const-string v0, "security_settings_security_question_pop"

    .line 125
    .line 126
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
