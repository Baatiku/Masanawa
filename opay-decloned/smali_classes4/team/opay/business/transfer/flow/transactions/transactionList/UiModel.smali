.class public abstract Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;
.super Ljava/lang/Object;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;,
        Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$Companion;,
        Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;,
        Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \n2\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u0011\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u0082\u0001\u0003\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        "",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "item",
        "<init>",
        "(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V",
        "a",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "()Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "setItem",
        "b",
        "ItemModel",
        "SeparatorModel",
        "BalanceSeparatorModel",
        "Companion",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;",
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


# static fields
.field public static final b:Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lteam/opay/business/transfer/flow/api/TransactionInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;->b:Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;->a:Lteam/opay/business/transfer/flow/api/TransactionInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;-><init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lteam/opay/business/transfer/flow/api/TransactionInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;->a:Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 2
    .line 3
    return-object v0
.end method
