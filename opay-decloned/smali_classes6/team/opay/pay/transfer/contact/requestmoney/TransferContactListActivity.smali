.class public final Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;
.super Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferContactListActivity;
.source "TransferContactListActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J/\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "E",
        "Lmg;",
        "e",
        "Lid8;",
        "D",
        "()Lmg;",
        "viewBinding",
        "f",
        "Ljava/lang/String;",
        "from",
        "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;",
        "g",
        "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;",
        "transferContactListFragment",
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

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_transfer_contact_list:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferContactListActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll3f;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ll3f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->e:Lid8;

    .line 16
    .line 17
    const-string v0, "request_money"

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->f:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->F(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->G(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lmg;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->H(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lmg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;
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
    const-string v2, "request_money_view_transactions_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->D()Lmg;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lmg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "getContext(...)"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "otravel://request_money_history/entrance"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)Lmg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmg;->inflate(Landroid/view/LayoutInflater;)Lmg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public D()Lmg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmg;

    .line 8
    .line 9
    return-object v0
.end method

.method public final E()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->D()Lmg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$string;->request_money_header:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->D()Lmg;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lmg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/android/views/OpayActionBar;->getEndActionView()Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x28

    .line 29
    .line 30
    invoke-static {v2}, Ljmf;->d(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-static {v2}, Ljmf;->d(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_ic_request_money_history:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lm3f;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lm3f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->D()Lmg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferContactListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->D()Lmg;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lmg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 11
    .line 12
    new-instance v0, Lk3f;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lk3f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->E()V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->D:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$Companion;

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->g:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 36
    .line 37
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListActivity;->g:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
