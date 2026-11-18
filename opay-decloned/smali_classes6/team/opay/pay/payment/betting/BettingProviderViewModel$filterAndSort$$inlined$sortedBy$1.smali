.class public final Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/betting/BettingProviderViewModel;->B(ILjava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/betting/BettingProviderViewModel;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/betting/BettingProviderViewModel;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->a:Lteam/opay/pay/payment/betting/BettingProviderViewModel;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lteam/opay/core/api/graphql/BettingInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->a:Lteam/opay/pay/payment/betting/BettingProviderViewModel;

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->b:I

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/pay/payment/betting/BettingProviderViewModel;->u(Lteam/opay/pay/payment/betting/BettingProviderViewModel;ILteam/opay/core/api/graphql/BettingInfo;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p2, Lteam/opay/core/api/graphql/BettingInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->a:Lteam/opay/pay/payment/betting/BettingProviderViewModel;

    .line 18
    .line 19
    iget v1, p0, Lteam/opay/pay/payment/betting/BettingProviderViewModel$filterAndSort$$inlined$sortedBy$1;->b:I

    .line 20
    .line 21
    invoke-static {v0, v1, p2}, Lteam/opay/pay/payment/betting/BettingProviderViewModel;->u(Lteam/opay/pay/payment/betting/BettingProviderViewModel;ILteam/opay/core/api/graphql/BettingInfo;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lkotlin/comparisons/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method
