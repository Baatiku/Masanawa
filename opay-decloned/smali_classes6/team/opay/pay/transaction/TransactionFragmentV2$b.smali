.class public final Lteam/opay/pay/transaction/TransactionFragmentV2$b;
.super Lteam/opay/pay/transaction/OnHeaderClickAdapter;
.source "TransactionFragmentV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transaction/TransactionFragmentV2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/transaction/TransactionFragmentV2$b",
        "Lteam/opay/pay/transaction/OnHeaderClickAdapter;",
        "Landroid/view/View;",
        "view",
        "",
        "id",
        "position",
        "",
        "b",
        "(Landroid/view/View;II)V",
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
.field public final synthetic a:Lteam/opay/pay/transaction/TransactionFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transaction/TransactionFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionFragmentV2$b;->a:Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/transaction/OnHeaderClickAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;II)V
    .locals 2

    .line 1
    const-string p3, "view"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lteam/opay/pay/R$id;->vClickView:I

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/pay/transaction/TransactionFragmentV2$b;->a:Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 11
    .line 12
    invoke-static {p1}, Lteam/opay/pay/transaction/TransactionFragmentV2;->n0(Lteam/opay/pay/transaction/TransactionFragmentV2;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget p1, Lteam/opay/pay/R$id;->iv_statistics:I

    .line 17
    .line 18
    if-ne p2, p1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/pay/transaction/TransactionFragmentV2$b;->a:Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 21
    .line 22
    invoke-static {p1}, Lteam/opay/pay/transaction/TransactionFragmentV2;->h0(Lteam/opay/pay/transaction/TransactionFragmentV2;)Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget p3, p1, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    if-eq p3, v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object p1, p2

    .line 36
    :goto_0
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p3, p0, Lteam/opay/pay/transaction/TransactionFragmentV2$b;->a:Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 39
    .line 40
    invoke-static {p3}, Lteam/opay/pay/transaction/TransactionFragmentV2;->i0(Lteam/opay/pay/transaction/TransactionFragmentV2;)Lteam/opay/pay/transaction/TransactionListAdapterV2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "getData(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p1, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 54
    .line 55
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->e()Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :cond_2
    invoke-static {p3, p2}, Lteam/opay/pay/transaction/TransactionFragmentV2;->k0(Lteam/opay/pay/transaction/TransactionFragmentV2;Ljava/lang/Long;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method
