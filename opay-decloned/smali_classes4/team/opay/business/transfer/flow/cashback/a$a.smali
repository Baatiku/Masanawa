.class public final Lteam/opay/business/transfer/flow/cashback/a$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CashBackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/cashback/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/business/transfer/flow/cashback/a$a",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "oldItem",
        "newItem",
        "",
        "d",
        "(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;)Z",
        "e",
        "business-transfer-flow_release"
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
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/a$a;->d(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/cashback/a$a;->e(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;)Z
    .locals 1

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public e(Lteam/opay/business/transfer/flow/api/CashBackBean;Lteam/opay/business/transfer/flow/api/CashBackBean;)Z
    .locals 2

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackBean;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->a()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    return p1
.end method
