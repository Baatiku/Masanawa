.class public final Lteam/opay/sme/va/v2/MyBusinessActivity;
.super Lsw6;
.source "MyBusinessActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/MyBusinessActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "d0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "e0",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/sme/va/R$layout;->sme_va_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lsw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

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
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sparse-switch v1, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :sswitch_0
    const-string v1, "opay://business/sme/tn/home"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->Companion:Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    sget-object v0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->v:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$Companion;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$Companion;->a(Landroid/net/Uri;)Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    sget-object v0, Lteam/opay/sme/va/v2/MyBusinessFragment;->x:Lteam/opay/sme/va/v2/MyBusinessFragment$Companion;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lteam/opay/sme/va/v2/MyBusinessFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :sswitch_1
    const-string p1, "opay://business/sme/tn/merchantServices"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    sget-object p1, Lteam/opay/sme/va/v2/MerchantServicesFragment;->j:Lteam/opay/sme/va/v2/MerchantServicesFragment$Companion;

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/sme/va/v2/MerchantServicesFragment$Companion;->a()Lteam/opay/sme/va/v2/MerchantServicesFragment;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :sswitch_2
    const-string p1, "opay://business/sme/tn/paymentAccount"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    sget-object p1, Lteam/opay/sme/va/v2/home/PaymentAccountFragment;->m:Lteam/opay/sme/va/v2/home/PaymentAccountFragment$Companion;

    .line 89
    .line 90
    invoke-virtual {p1}, Lteam/opay/sme/va/v2/home/PaymentAccountFragment$Companion;->a()Lteam/opay/sme/va/v2/home/PaymentAccountFragment;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :sswitch_3
    const-string p1, "opay://business/sme/tn/payMePage"

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    sget-object p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->m:Lteam/opay/sme/va/v2/payMe/PayMeFragment$Companion;

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$Companion;->a()Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :sswitch_data_0
    .sparse-switch
        -0x71ce2d94 -> :sswitch_3
        -0x6b30abf6 -> :sswitch_2
        0x2b18e849 -> :sswitch_1
        0x4fab9362 -> :sswitch_0
    .end sparse-switch
.end method

.method private final e0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/sme/va/R$id;->fragment_container:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lsw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lteam/opay/sme/va/v2/MyBusinessActivity;->d0(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
