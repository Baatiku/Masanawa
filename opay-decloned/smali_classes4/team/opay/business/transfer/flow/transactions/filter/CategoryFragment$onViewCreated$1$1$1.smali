.class final synthetic Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment$onViewCreated$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CategoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "Lkotlin/Unit;",
        ">;"
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "onItemClick(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const-class v3, Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment;

    .line 6
    .line 7
    const-string v4, "onItemClick"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment$onViewCreated$1$1$1;->invoke(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment;

    invoke-static {v0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment;->U(Lteam/opay/business/transfer/flow/transactions/filter/CategoryFragment;ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    return-void
.end method
