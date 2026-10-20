.class public final Lteam/opay/pay/wallet/cashback/CashBackActivity;
.super Lteam/opay/pay/wallet/cashback/Hilt_CashBackActivity;
.source "CashBackActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/pay/wallet/cashback/CashBackActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/wallet/cashback/CashBackFragment;",
        "g",
        "Lteam/opay/pay/wallet/cashback/CashBackFragment;",
        "cashBackFragment",
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
.field public g:Lteam/opay/pay/wallet/cashback/CashBackFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->layout_container_fragment:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/wallet/cashback/Hilt_CashBackActivity;-><init>(I)V

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
    invoke-super {p0, p1}, Lteam/opay/pay/wallet/cashback/Hilt_CashBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/wallet/cashback/CashBackFragment;

    .line 7
    .line 8
    invoke-direct {p1}, Lteam/opay/pay/wallet/cashback/CashBackFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackActivity;->g:Lteam/opay/pay/wallet/cashback/CashBackFragment;

    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$id;->root_view:I

    .line 14
    .line 15
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
