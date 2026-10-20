.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/SeparatorViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionList/SeparatorViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "Lh86;",
        "binding",
        "<init>",
        "(Lh86;)V",
        "a",
        "Lh86;",
        "()Lh86;",
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


# instance fields
.field public final a:Lh86;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh86;)V
    .locals 1
    .param p1    # Lh86;
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
    invoke-direct {p0, p1}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/SeparatorViewHolder;->a:Lh86;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lh86;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/SeparatorViewHolder;->a:Lh86;

    .line 2
    .line 3
    return-object v0
.end method
