.class public final Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lv56;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->b(Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Lv56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv56<",
        "Landroidx/paging/PagingData<",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008\u00b8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lv56;",
        "La66;",
        "collector",
        "",
        "collect",
        "(La66;Ljr2;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1",
        "kotlinx-coroutines-core"
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
.field public final synthetic a:Lv56;

.field public final synthetic b:Lteam/opay/business/transfer/flow/api/CashBackReq;


# direct methods
.method public constructor <init>(Lv56;Lteam/opay/business/transfer/flow/api/CashBackReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;->a:Lv56;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;->b:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public collect(La66;Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;->a:Lv56;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;->b:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;-><init>(La66;Lteam/opay/business/transfer/flow/api/CashBackReq;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, p2}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1
.end method
