.class public final Lcom/opay/team/newhome/account/AccountDetailActivity;
.super Lcom/opay/team/newhome/account/Hilt_AccountDetailActivity;
.source "AccountDetailActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/opay/team/newhome/account/AccountDetailActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "g",
        "I",
        "getDarkStatusBarColor",
        "()I",
        "setDarkStatusBarColor",
        "(I)V",
        "darkStatusBarColor",
        "h",
        "getLightStatusBarColor",
        "setLightStatusBarColor",
        "lightStatusBarColor",
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
.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_f8f8fb:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/account/Hilt_AccountDetailActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$color;->no_dark_1b1b1b:I

    .line 7
    .line 8
    iput v0, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->g:I

    .line 9
    .line 10
    sget v0, Lteam/opay/pay/R$color;->no_dark_f8f8fb:I

    .line 11
    .line 12
    iput v0, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->h:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getDarkStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getLightStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/opay/team/newhome/account/Hilt_AccountDetailActivity;->onCreate(Landroid/os/Bundle;)V

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
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string v1, "from"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, p1

    .line 28
    :cond_1
    :goto_0
    sget-object p1, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->Companion:Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;->b()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Lcom/opay/team/newhome/account/NewWalletDetailsFragment;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/opay/team/newhome/account/NewWalletDetailsFragment;-><init>()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget-object p1, Lcom/opay/team/newhome/account/AccountDetailFragment;->A:Lcom/opay/team/newhome/account/AccountDetailFragment$Companion;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/account/AccountDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/opay/team/newhome/account/AccountDetailFragment;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 49
    .line 50
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setDarkStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setLightStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/team/newhome/account/AccountDetailActivity;->h:I

    .line 2
    .line 3
    return-void
.end method
