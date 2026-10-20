.class final Lcashier/quickpay/QuickChannelActivity$loadInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickChannelActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/quickpay/QuickChannelActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcashier/quickpay/QuickChannelActivity;


# direct methods
.method public constructor <init>(Lcashier/quickpay/QuickChannelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->this$0:Lcashier/quickpay/QuickChannelActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->this$0:Lcashier/quickpay/QuickChannelActivity;

    invoke-static {p1}, Lcashier/quickpay/QuickChannelActivity;->y(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcashier/data/PaymentItem;

    invoke-virtual {v2}, Lcashier/data/PaymentItem;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcashier/data/PaymentItem;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iget-object v0, p0, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->this$0:Lcashier/quickpay/QuickChannelActivity;

    invoke-static {v0}, Lcashier/quickpay/QuickChannelActivity;->w(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/ChannelInput;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcashier/quickpay/ChannelInput;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->this$0:Lcashier/quickpay/QuickChannelActivity;

    invoke-static {p1}, Lcashier/quickpay/QuickChannelActivity;->y(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcashier/data/PaymentItem;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcashier/data/PaymentItem;->j(Z)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p1, p0, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;->this$0:Lcashier/quickpay/QuickChannelActivity;

    invoke-static {p1}, Lcashier/quickpay/QuickChannelActivity;->y(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/QuickMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcashier/quickpay/QuickMethodManager;->n()V

    return-void
.end method
