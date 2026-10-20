.class public final Lteam/opay/pay/wallet/ReceiveMoneyActivity;
.super Lteam/opay/pay/wallet/Hilt_ReceiveMoneyActivity;
.source "ReceiveMoneyActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/wallet/ReceiveMoneyActivity;",
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
    invoke-direct {p0, v0}, Lteam/opay/pay/wallet/Hilt_ReceiveMoneyActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgdc;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lgdc;-><init>(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->D(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->E(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lkotlin/Unit;
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
    const-string v2, "receive_money_return_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)Lse;
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
    iget-object v0, p0, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->e:Lid8;

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
    invoke-virtual {p0}, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->C()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6
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
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "from"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    :cond_1
    move-object v1, p1

    .line 23
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 24
    .line 25
    sget-object v0, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;->w:Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$Companion;

    .line 26
    .line 27
    const/4 v4, 0x6

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$Companion;->b(Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->C()Lse;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 43
    .line 44
    sget v0, Lteam/opay/pay/R$string;->label_receive_money:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/wallet/ReceiveMoneyActivity;->C()Lse;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 54
    .line 55
    new-instance v0, Lhdc;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lhdc;-><init>(Lteam/opay/pay/wallet/ReceiveMoneyActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
