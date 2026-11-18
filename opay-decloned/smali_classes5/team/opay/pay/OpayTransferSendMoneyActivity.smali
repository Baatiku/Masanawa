.class public final Lteam/opay/pay/OpayTransferSendMoneyActivity;
.super Lteam/opay/pay/Hilt_OpayTransferSendMoneyActivity;
.source "OpayTransferSendMoneyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/OpayTransferSendMoneyActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/OpayTransferSendMoneyActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lse;",
        "e",
        "Lid8;",
        "C",
        "()Lse;",
        "viewBinding",
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
.field public static final f:Lteam/opay/pay/OpayTransferSendMoneyActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/OpayTransferSendMoneyActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/OpayTransferSendMoneyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/OpayTransferSendMoneyActivity;->f:Lteam/opay/pay/OpayTransferSendMoneyActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_below_actionbar:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/Hilt_OpayTransferSendMoneyActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Laua;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Laua;-><init>(Lteam/opay/pay/OpayTransferSendMoneyActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/OpayTransferSendMoneyActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->D(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->E(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/OpayTransferSendMoneyActivity;)Lse;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lse;->inflate(Landroid/view/LayoutInflater;)Lse;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Lse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/OpayTransferSendMoneyActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lse;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->C()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    move-object p1, v1

    .line 36
    :cond_2
    const-string v0, ""

    .line 37
    .line 38
    const-string v1, "OpayTransferSendMoneyActivity_sceneSource"

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const-string v3, "OpayTransferSendMoneyActivity_isNewUser"

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v0, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->C()Lse;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v1, v1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 103
    .line 104
    new-instance v2, Lzta;

    .line 105
    .line 106
    invoke-direct {v2, p0}, Lzta;-><init>(Lteam/opay/pay/OpayTransferSendMoneyActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->C()Lse;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v1, v1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 117
    .line 118
    sget v2, Lteam/opay/pay/R$string;->osdk_transfer_to_opay_account:I

    .line 119
    .line 120
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/pay/OpayTransferSendMoneyActivity;->C()Lse;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v1, v1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 132
    .line 133
    sget v2, Lteam/opay/pay/R$color;->black_85:I

    .line 134
    .line 135
    invoke-static {p0, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v1, v2}, Lteam/opay/core/android/views/OpayActionBar;->setTitleColor(I)V

    .line 140
    .line 141
    .line 142
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 143
    .line 144
    sget-object v2, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->Y:Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$Companion;

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v2, p1, v0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$Companion;->a(Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->h(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
