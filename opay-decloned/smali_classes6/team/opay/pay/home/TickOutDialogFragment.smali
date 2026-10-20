.class public final Lteam/opay/pay/home/TickOutDialogFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "TickOutDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/TickOutDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lke3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u001c\u0010\u0017\"\u0004\u0008\u001d\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/home/TickOutDialogFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lke3;",
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
        "Q",
        "Lteam/opay/core/android/arch/ApiError;",
        "j",
        "Lteam/opay/core/android/arch/ApiError;",
        "apiError",
        "",
        "k",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "l",
        "J",
        "setSupportCancelable",
        "supportCancelable",
        "m",
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
.field public static final m:Lteam/opay/pay/home/TickOutDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lteam/opay/core/android/arch/ApiError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/TickOutDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/TickOutDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/TickOutDialogFragment;->m:Lteam/opay/pay/home/TickOutDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/TickOutDialogFragment$1;->INSTANCE:Lteam/opay/pay/home/TickOutDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/TickOutDialogFragment;->k:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->U(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->R(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->T(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->S(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->Q()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/TickOutDialogFragment;->Q()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
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
    const-string v2, "login_switching_device_popup_change_password_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/pin/PasswordRecoveryActivity;->g:Lteam/opay/pay/pin/PasswordRecoveryActivity$Companion;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 14
    .line 15
    invoke-direct {v1}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/pin/LoginPhoneStorage;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/pin/PasswordRecoveryActivity$Companion;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/home/TickOutDialogFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lql8;->a:Lql8;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lql8;->p(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/TickOutDialogFragment;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "login_switching_device_popup_relogin_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lql8;->a:Lql8;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-static {v0, v1, v2, v3, v2}, Lql8;->l(Lql8;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/TickOutDialogFragment;->k:Z

    .line 2
    .line 3
    return v0
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
    check-cast p1, Lteam/opay/core/android/arch/ApiError;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 21
    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "getContext(...)"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lum8;->f(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lke3;

    .line 30
    .line 31
    iget-object p1, p1, Lke3;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    const-string p2, "tvTitle"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object p2, v0

    .line 49
    :goto_0
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-ne p2, v1, :cond_2

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p2, 0x0

    .line 58
    :goto_1
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 62
    .line 63
    const-string p2, "kick_out"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object p1, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move-object p1, v0

    .line 83
    :goto_2
    if-ne p1, v1, :cond_5

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-lez p1, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move-object p1, v0

    .line 103
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " "

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance p2, Landroid/text/SpannableString;

    .line 124
    .line 125
    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lteam/opay/pay/home/TickOutDialogFragment$a;

    .line 129
    .line 130
    invoke-direct {p1, p0}, Lteam/opay/pay/home/TickOutDialogFragment$a;-><init>(Lteam/opay/pay/home/TickOutDialogFragment;)V

    .line 131
    .line 132
    .line 133
    const/4 v8, 0x6

    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    move-object v4, p2

    .line 138
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    const/16 v6, 0x21

    .line 147
    .line 148
    invoke-virtual {p2, p1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lke3;

    .line 156
    .line 157
    iget-object p1, p1, Lke3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lke3;

    .line 167
    .line 168
    iget-object p1, p1, Lke3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lke3;

    .line 178
    .line 179
    iget-object p1, p1, Lke3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lke3;

    .line 194
    .line 195
    iget-object p1, p1, Lke3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 196
    .line 197
    iget-object p2, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 198
    .line 199
    if-eqz p2, :cond_6

    .line 200
    .line 201
    invoke-virtual {p2}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    goto :goto_4

    .line 206
    :cond_6
    move-object p2, v0

    .line 207
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lke3;

    .line 215
    .line 216
    iget-object p1, p1, Lke3;->f:Lcom/google/android/material/button/MaterialButton;

    .line 217
    .line 218
    const-string p2, "oneLogin"

    .line 219
    .line 220
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 224
    .line 225
    if-eqz v4, :cond_7

    .line 226
    .line 227
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    goto :goto_6

    .line 232
    :cond_7
    move-object v4, v0

    .line 233
    :goto_6
    sget-object v5, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 234
    .line 235
    if-ne v4, v5, :cond_8

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    goto :goto_7

    .line 239
    :cond_8
    const/4 v4, 0x0

    .line 240
    :goto_7
    invoke-static {p1, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lke3;

    .line 248
    .line 249
    iget-object p1, p1, Lke3;->j:Landroidx/constraintlayout/widget/Group;

    .line 250
    .line 251
    const-string v4, "twoButtonGroup"

    .line 252
    .line 253
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v4, p0, Lteam/opay/pay/home/TickOutDialogFragment;->j:Lteam/opay/core/android/arch/ApiError;

    .line 257
    .line 258
    if-eqz v4, :cond_9

    .line 259
    .line 260
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :cond_9
    if-ne v0, v1, :cond_a

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_a
    const/4 v2, 0x0

    .line 268
    :goto_8
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Lke3;

    .line 276
    .line 277
    iget-object p1, p1, Lke3;->f:Lcom/google/android/material/button/MaterialButton;

    .line 278
    .line 279
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance p2, Lmke;

    .line 283
    .line 284
    invoke-direct {p2, p0}, Lmke;-><init>(Lteam/opay/pay/home/TickOutDialogFragment;)V

    .line 285
    .line 286
    .line 287
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Lke3;

    .line 295
    .line 296
    iget-object p1, p1, Lke3;->k:Lcom/google/android/material/button/MaterialButton;

    .line 297
    .line 298
    const-string p2, "twoLogin"

    .line 299
    .line 300
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance p2, Lnke;

    .line 304
    .line 305
    invoke-direct {p2, p0}, Lnke;-><init>(Lteam/opay/pay/home/TickOutDialogFragment;)V

    .line 306
    .line 307
    .line 308
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    check-cast p1, Lke3;

    .line 316
    .line 317
    iget-object p1, p1, Lke3;->g:Lcom/google/android/material/button/MaterialButton;

    .line 318
    .line 319
    const-string p2, "resetPsw"

    .line 320
    .line 321
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance p2, Loke;

    .line 325
    .line 326
    invoke-direct {p2, p0}, Loke;-><init>(Lteam/opay/pay/home/TickOutDialogFragment;)V

    .line 327
    .line 328
    .line 329
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Lke3;

    .line 337
    .line 338
    iget-object p1, p1, Lke3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 339
    .line 340
    const-string p2, "ivClose"

    .line 341
    .line 342
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance p2, Lpke;

    .line 346
    .line 347
    invoke-direct {p2, p0}, Lpke;-><init>(Lteam/opay/pay/home/TickOutDialogFragment;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 351
    .line 352
    .line 353
    sget-object p1, Lx7b;->a:Lx7b;

    .line 354
    .line 355
    const-string p2, "login_switching_device_popup_show"

    .line 356
    .line 357
    new-array v0, v3, [Lkotlin/Pair;

    .line 358
    .line 359
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 360
    .line 361
    .line 362
    return-void
.end method
