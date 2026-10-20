.class public final Lteam/opay/pay/home/tabs/ac/BankStatusActivity;
.super Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusActivity;
.source "BankStatusActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/BankStatusActivity;",
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
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_below_actionbar:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfk0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lfk0;-><init>(Lteam/opay/pay/home/tabs/ac/BankStatusActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/tabs/ac/BankStatusActivity;)Lse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->E(Lteam/opay/pay/home/tabs/ac/BankStatusActivity;)Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->D(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->T()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/home/tabs/ac/BankStatusActivity;)Lse;
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
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->e:Lid8;

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
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->C()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->C()Lse;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/android/views/OpayActionBar;->getActionView()Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget v0, Lteam/opay/pay/R$mipmap;->icon_refresh:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lxie;->e(Landroid/widget/TextView;IIILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ljmf;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 28
    .line 29
    .line 30
    sget v0, Lteam/opay/pay/R$color;->color_00B876:I

    .line 31
    .line 32
    invoke-static {p0, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->C()Lse;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 44
    .line 45
    sget v0, Lteam/opay/pay/R$string;->osdk_bank_status_title:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "user_type"

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_0
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_2
    sget-object p1, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->s:Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;

    .line 83
    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    const-string v3, ""

    .line 87
    .line 88
    :cond_3
    invoke-virtual {p1, v3}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/home/tabs/ac/BankStatusFragment;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 93
    .line 94
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusActivity;->C()Lse;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, v0, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 102
    .line 103
    sget v0, Lteam/opay/pay/R$string;->button_refresh_status:I

    .line 104
    .line 105
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    new-instance v4, Lgk0;

    .line 110
    .line 111
    invoke-direct {v4, p1}, Lgk0;-><init>(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;)V

    .line 112
    .line 113
    .line 114
    const/4 v5, 0x1

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-static/range {v1 .. v6}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
