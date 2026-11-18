.class final Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentMethodAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/adapter/PayMethodAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/data/PayChannelItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "channelItem",
        "Lcashier/data/PayChannelItem;",
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
.field final synthetic this$0:Lcashier/adapter/PayMethodAdapter;


# direct methods
.method public constructor <init>(Lcashier/adapter/PayMethodAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;->this$0:Lcashier/adapter/PayMethodAdapter;

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
    check-cast p1, Lcashier/data/PayChannelItem;

    invoke-virtual {p0, p1}, Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;->invoke(Lcashier/data/PayChannelItem;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/PayChannelItem;)V
    .locals 7
    .param p1    # Lcashier/data/PayChannelItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "channelItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 3
    const-string v0, "paychannel"

    const-string v2, "OWealth"

    invoke-static {v0, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 4
    const-string v2, "paychannel_status"

    const-string v3, "nonactivated"

    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 5
    const-string v2, "COMMON_pay_window_jump_click"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;->this$0:Lcashier/adapter/PayMethodAdapter;

    invoke-virtual {p1}, Lcashier/data/PayChannelItem;->q()Lcashier/data/QuestionMark;

    move-result-object p1

    invoke-static {v0, p1}, Lcashier/adapter/PayMethodAdapter;->q(Lcashier/adapter/PayMethodAdapter;Lcashier/data/QuestionMark;)V

    return-void
.end method
