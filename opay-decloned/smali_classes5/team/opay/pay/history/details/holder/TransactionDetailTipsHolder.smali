.class public final Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;
.super Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
.source "TransactionDetailTipsHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0010R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "Lfk7;",
        "binding",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "",
        "clickCallback",
        "<init>",
        "(Lfk7;Lkotlin/jvm/functions/Function1;)V",
        "",
        "position",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "data",
        "a",
        "(ILteam/opay/pay/history/details/BaseTransactionDetail;)V",
        "Lfk7;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
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
.field public final a:Lfk7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfk7;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lfk7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk7;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfk7;->a()Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;->a:Lfk7;

    .line 19
    .line 20
    iput-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;Lteam/opay/pay/history/details/DetailsTips;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;->c(Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;Lteam/opay/pay/history/details/DetailsTips;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;Lteam/opay/pay/history/details/DetailsTips;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/history/details/DetailsTips;->getBankInfoResponse()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public a(ILteam/opay/pay/history/details/BaseTransactionDetail;)V
    .locals 1
    .param p2    # Lteam/opay/pay/history/details/BaseTransactionDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p2, Lteam/opay/pay/history/details/DetailsTips;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;->a:Lfk7;

    .line 9
    .line 10
    iget-object p1, p1, Lfk7;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsTips;->getTips()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsTips;->getBankInfoResponse()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    const-string v0, "itemView"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lqve;

    .line 33
    .line 34
    invoke-direct {v0, p0, p2}, Lqve;-><init>(Lteam/opay/pay/history/details/holder/TransactionDetailTipsHolder;Lteam/opay/pay/history/details/DetailsTips;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
