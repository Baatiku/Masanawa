.class public final Lcom/opay/team/newhome/home/balance/HomeSavingDetailsActivity;
.super Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsActivity;
.source "HomeSavingDetailsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/balance/HomeSavingDetailsActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsActivity;-><init>(I)V

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
    invoke-super {p0, p1}, Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 5
    .line 6
    new-instance v0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->h(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
