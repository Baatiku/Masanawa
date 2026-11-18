.class public final Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "SecondaryConfirmFailSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Lh1b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\"\u0010\u0014\u001a\u00020\r8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\r8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lh1b;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "",
        "k",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "l",
        "getSupportBack",
        "setSupportBack",
        "supportBack",
        "Lteam/opay/core/api/graphql/ReleaseDialogInfo;",
        "m",
        "Lid8;",
        "T",
        "()Lteam/opay/core/api/graphql/ReleaseDialogInfo;",
        "dialogInfo",
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
.field public static final n:Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public k:Z

.field public l:Z

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->n:Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->l:Z

    .line 8
    .line 9
    new-instance v0, Lo6d;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lo6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->m:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lteam/opay/core/api/graphql/ReleaseDialogInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->S(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->V(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->U(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lteam/opay/core/api/graphql/ReleaseDialogInfo;
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
    const-string v0, "key_dialog_info"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/core/api/graphql/ReleaseDialogInfo;

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

.method public static final U(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Lkotlin/Pair;

    .line 7
    .line 8
    const-string v3, "register_help"

    .line 9
    .line 10
    invoke-static {v0, v3, v2}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "key_result_action"

    .line 7
    .line 8
    const-string v2, "result_action_login_input"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()V
    .locals 0

    .line 1
    return-void
.end method

.method public final T()Lteam/opay/core/api/graphql/ReleaseDialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->l:Z

    .line 2
    .line 3
    return v0
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
    check-cast p1, Lh1b;

    .line 14
    .line 15
    iget-object p1, p1, Lh1b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->T()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/ReleaseDialogInfo;->getTitle()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p2, v0

    .line 30
    :goto_0
    const-string v1, ""

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    move-object p2, v1

    .line 35
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lh1b;

    .line 43
    .line 44
    iget-object p1, p1, Lh1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->T()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/ReleaseDialogInfo;->getContent()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p2, v0

    .line 58
    :goto_1
    if-nez p2, :cond_3

    .line 59
    .line 60
    move-object p2, v1

    .line 61
    :cond_3
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->T()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseDialogInfo;->getNote()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move-object p1, v0

    .line 80
    :goto_2
    if-eqz p1, :cond_8

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lh1b;

    .line 94
    .line 95
    iget-object p1, p1, Lh1b;->e:Landroidx/constraintlayout/widget/Group;

    .line 96
    .line 97
    const-string p2, "markGroup"

    .line 98
    .line 99
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lh1b;

    .line 110
    .line 111
    iget-object p1, p1, Lh1b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;->T()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/ReleaseDialogInfo;->getNote()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_6
    if-nez v0, :cond_7

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    move-object v1, v0

    .line 127
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lh1b;

    .line 135
    .line 136
    iget-object p1, p1, Lh1b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 137
    .line 138
    const-string p2, "contactSupport"

    .line 139
    .line 140
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance p2, Lm6d;

    .line 144
    .line 145
    invoke-direct {p2, p0}, Lm6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lh1b;

    .line 156
    .line 157
    iget-object p1, p1, Lh1b;->j:Lcom/google/android/material/button/MaterialButton;

    .line 158
    .line 159
    const-string p2, "useAnotherButton"

    .line 160
    .line 161
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance p2, Ln6d;

    .line 165
    .line 166
    invoke-direct {p2, p0}, Ln6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryConfirmFailSheetFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method
