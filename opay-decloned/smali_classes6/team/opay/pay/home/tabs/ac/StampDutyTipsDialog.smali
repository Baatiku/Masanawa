.class public final Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "StampDutyTipsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lge3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lge3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        "j",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        "config",
        "",
        "k",
        "Ljava/lang/String;",
        "stampDutyAmount",
        "l",
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
.field public static final l:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->l:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$1;->INSTANCE:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li3e;

    .line 7
    .line 8
    invoke-direct {v0}, Li3e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->j:Lid8;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->k:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->S(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->P()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic O(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->R(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final P()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;->a()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final R(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "requireContext(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final Q()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 8
    .line 9
    return-object v0
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "key_stamp_duty_amount"

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->k:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->Q()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->getTipsDto()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p1, p2

    .line 36
    :goto_0
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lge3;

    .line 47
    .line 48
    iget-object v0, v0, Lge3;->d:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;->e()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lge3;

    .line 62
    .line 63
    iget-object v0, v0, Lge3;->e:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;->d()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->k:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v5, 0x4

    .line 74
    const/4 v6, 0x0

    .line 75
    const-string v2, "%s"

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    :cond_2
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lge3;

    .line 94
    .line 95
    iget-object p2, p2, Lge3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lge3;

    .line 109
    .line 110
    iget-object p2, p2, Lge3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 111
    .line 112
    const-string v0, "btn"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lj3e;

    .line 118
    .line 119
    invoke-direct {v0, p1, p0}, Lj3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v0}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lge3;

    .line 130
    .line 131
    iget-object p1, p1, Lge3;->c:Landroid/widget/ImageView;

    .line 132
    .line 133
    const-string p2, "btnClose"

    .line 134
    .line 135
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Lk3e;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Lk3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
