.class public final Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;
.super Ljava/lang/Object;
.source "TransferFilterTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Companion;,
        Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001e\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000cR$\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R&\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u00160\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R)\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u00160\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "filter",
        "",
        "request",
        "",
        "a",
        "(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Z)V",
        "f",
        "()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "e",
        "Lteam/opay/business/transfer/flow/api/CategoryListResp;",
        "Lteam/opay/business/transfer/flow/api/CategoryListResp;",
        "c",
        "()Lteam/opay/business/transfer/flow/api/CategoryListResp;",
        "g",
        "(Lteam/opay/business/transfer/flow/api/CategoryListResp;)V",
        "categoryListResp",
        "Lteam/opay/core/common/CorpLiveData;",
        "Lkotlin/Pair;",
        "b",
        "Lteam/opay/core/common/CorpLiveData;",
        "_filter",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/LiveData;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "Filter",
        "Companion",
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
.field public static final d:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lteam/opay/business/transfer/flow/api/CategoryListResp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lteam/opay/core/common/CorpLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/CorpLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->d:Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/core/common/CorpLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/core/common/CorpLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->b:Lteam/opay/core/common/CorpLiveData;

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->c:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic b(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->a(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Z)V
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "filter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->b:Lteam/opay/core/common/CorpLiveData;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lteam/opay/core/common/CorpLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c()Lteam/opay/business/transfer/flow/api/CategoryListResp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->a:Lteam/opay/business/transfer/flow/api/CategoryListResp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->c:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->f()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 8
    .line 9
    const/16 v6, 0xf

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, v0

    .line 17
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method public final f()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->c:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/Pair;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public final g(Lteam/opay/business/transfer/flow/api/CategoryListResp;)V
    .locals 0
    .param p1    # Lteam/opay/business/transfer/flow/api/CategoryListResp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;->a:Lteam/opay/business/transfer/flow/api/CategoryListResp;

    .line 2
    .line 3
    return-void
.end method
