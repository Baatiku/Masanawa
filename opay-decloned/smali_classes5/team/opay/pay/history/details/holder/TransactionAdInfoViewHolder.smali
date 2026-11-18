.class public final Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;
.super Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
.source "TransactionAdInfoViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "Laj7;",
        "binding",
        "<init>",
        "(Laj7;)V",
        "",
        "position",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "data",
        "",
        "a",
        "(ILteam/opay/pay/history/details/BaseTransactionDetail;)V",
        "Laj7;",
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
.field public final a:Laj7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laj7;)V
    .locals 2
    .param p1    # Laj7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;->a:Laj7;

    .line 19
    .line 20
    return-void
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
    instance-of p1, p2, Lteam/opay/pay/history/details/DetailsAdInfos;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Lteam/opay/pay/history/details/DetailsAdInfos;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p2, v0

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsAdInfos;->getAdInfos()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object p1, v0

    .line 23
    :goto_1
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 p2, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 35
    :goto_3
    if-nez p2, :cond_4

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    :cond_4
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;->a:Laj7;

    .line 41
    .line 42
    iget-object p1, p1, Laj7;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_5
    return-void
.end method
