.class public final Lcom/opay/team/home/dialog/HomeNoticeFragment;
.super Lteam/opay/odialog/BaseBindingDialogFragment;
.source "HomeNoticeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/odialog/BaseBindingDialogFragment<",
        "Lmja;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/opay/team/home/dialog/HomeNoticeFragment;",
        "Lteam/opay/odialog/BaseBindingDialogFragment;",
        "Lmja;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "f",
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
.field public static final f:Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/home/dialog/HomeNoticeFragment;->f:Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/opay/team/home/dialog/HomeNoticeFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/opay/team/home/dialog/HomeNoticeFragment;->g:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/dialog/HomeNoticeFragment$1;->INSTANCE:Lcom/opay/team/home/dialog/HomeNoticeFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/odialog/BaseBindingDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic B(Lcom/opay/team/home/dialog/HomeNoticeFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/home/dialog/HomeNoticeFragment;->D(Lcom/opay/team/home/dialog/HomeNoticeFragment;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/dialog/HomeNoticeFragment;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final D(Lcom/opay/team/home/dialog/HomeNoticeFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/odialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object p0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 11
    .line 12
    sget-object p2, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string v0, "home_notice_page_click"

    .line 22
    .line 23
    new-array v2, p2, [Lkotlin/Pair;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 29
    .line 30
    sget-object v4, Lcom/opay/team/home/dialog/HomeNoticeFragment;->g:Ljava/lang/String;

    .line 31
    .line 32
    new-array v5, p2, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v2, p1

    .line 38
    invoke-static/range {v0 .. v7}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/odialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string v1, "key_home_notice_title"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object p1, v0

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v2, "key_home_notice_content"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object v1, v0

    .line 79
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    const-string v0, "key_home_notice_action"

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_5
    sget-object v2, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 92
    .line 93
    sget-object v3, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    const-string v3, "home_notice_page"

    .line 102
    .line 103
    new-array p2, p2, [Lkotlin/Pair;

    .line 104
    .line 105
    invoke-virtual {v2, v3, p2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-virtual {p0}, Lteam/opay/odialog/BaseBindingDialogFragment;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lmja;

    .line 113
    .line 114
    iget-object p2, p2, Lmja;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance v2, Lv07;

    .line 117
    .line 118
    invoke-direct {v2, p0, v0}, Lv07;-><init>(Lcom/opay/team/home/dialog/HomeNoticeFragment;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/odialog/BaseBindingDialogFragment;->getBinding()Lxyf;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Lmja;

    .line 129
    .line 130
    iget-object p2, p2, Lmja;->e:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lteam/opay/odialog/BaseBindingDialogFragment;->getBinding()Lxyf;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lmja;

    .line 140
    .line 141
    iget-object p1, p1, Lmja;->d:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
