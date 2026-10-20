.class public final Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "EmailSuccessfullyAddedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lrd6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lrd6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "j",
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
.field public static final j:Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->j:Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$Companion;

    .line 8
    .line 9
    const-string v0, "key_data"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "key_from_change"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->l:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$1;->INSTANCE:Lteam/opay/pay/email/EmailSuccessfullyAddedFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->R(Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final R(Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;)Lkotlin/Unit;
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
    const-string v2, "email_change_successful_show_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "view"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->k:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lrd6;

    .line 25
    .line 26
    iget-object p2, p2, Lrd6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    const-string v1, "btnConfirm"

    .line 29
    .line 30
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Laj5;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Laj5;-><init>(Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    sget-object p2, Lx7b;->a:Lx7b;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    new-array v2, v1, [Lkotlin/Pair;

    .line 45
    .line 46
    const-string v3, "email_change_successful_show"

    .line 47
    .line 48
    invoke-virtual {p2, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget-object v2, Lteam/opay/pay/email/EmailSuccessfullyAddedFragment;->l:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const-string v2, "tvChangeEmailHint"

    .line 62
    .line 63
    const-string v3, ""

    .line 64
    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lrd6;

    .line 72
    .line 73
    iget-object p2, p2, Lrd6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    sget v4, Lteam/opay/pay/R$string;->osdk_email_change_successful_tips:I

    .line 76
    .line 77
    if-nez p1, :cond_0

    .line 78
    .line 79
    move-object p1, v3

    .line 80
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p1, v0, v1

    .line 83
    .line 84
    invoke-static {v4, v0}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lrd6;

    .line 100
    .line 101
    iget-object p1, p1, Lrd6;->d:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lrd6;

    .line 114
    .line 115
    iget-object p1, p1, Lrd6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    sget p2, Lteam/opay/pay/R$string;->osdk_email_change_successful:I

    .line 118
    .line 119
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Lrd6;

    .line 132
    .line 133
    iget-object p2, p2, Lrd6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    sget v4, Lteam/opay/pay/R$string;->osdk_email_successfully_added_hint:I

    .line 136
    .line 137
    if-nez p1, :cond_2

    .line 138
    .line 139
    move-object p1, v3

    .line 140
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object p1, v0, v1

    .line 143
    .line 144
    invoke-static {v4, v0}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lrd6;

    .line 160
    .line 161
    iget-object p1, p1, Lrd6;->d:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lrd6;

    .line 174
    .line 175
    iget-object p1, p1, Lrd6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    sget p2, Lteam/opay/pay/R$string;->osdk_email_successfully_added:I

    .line 178
    .line 179
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    return-void
.end method
