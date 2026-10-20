.class public final Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;
.super Ljava/lang/Object;
.source "PaymentReceiveMoneyFragment.kt"

# interfaces
.implements Lnpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnpc<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J;\u0010\u000b\u001a\u00020\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJE\u0010\u0010\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/pay/wallet/PaymentReceiveMoneyFragment$c",
        "Lnpc;",
        "Landroid/graphics/drawable/Drawable;",
        "Lcom/bumptech/glide/load/engine/GlideException;",
        "e",
        "",
        "model",
        "Llfe;",
        "target",
        "",
        "isFirstResource",
        "b",
        "(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Llfe;Z)Z",
        "resource",
        "Lcom/bumptech/glide/load/DataSource;",
        "dataSource",
        "d",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z",
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
.field public final synthetic a:Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;

.field public final synthetic b:Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->a:Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->b:Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->e(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;)V
    .locals 1

    .line 1
    const-string v0, "receive_money"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;->setFrom(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/odialog/DialogQueueUtils;->c()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;->j:Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment$Companion;->a(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;)Lteam/opay/pay/transfer/contact/view/dialog/AutoInvestPopupFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Llfe;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Llfe<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->d(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Llfe<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->a:Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;

    .line 2
    .line 3
    iget-object p2, p0, Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment$c;->b:Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;

    .line 4
    .line 5
    new-instance p3, Lqfb;

    .line 6
    .line 7
    invoke-direct {p3, p1, p2}, Lqfb;-><init>(Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;Lteam/opay/pay/wallet/PaymentReceiveMoneyFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lfke;->d(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1
.end method
