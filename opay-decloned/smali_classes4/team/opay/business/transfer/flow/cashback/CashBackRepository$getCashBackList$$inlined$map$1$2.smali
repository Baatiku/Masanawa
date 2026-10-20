.class public final Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;->collect(La66;Ljr2;)Ljava/lang/Object;
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
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "T",
        "R",
        "value",
        "",
        "emit",
        "(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:La66;

.field public final synthetic b:Lteam/opay/business/transfer/flow/api/CashBackReq;


# direct methods
.method public constructor <init>(La66;Lteam/opay/business/transfer/flow/api/CashBackReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;->a:La66;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;->b:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 6
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;->a:La66;

    .line 54
    .line 55
    check-cast p1, Landroidx/paging/PagingData;

    .line 56
    .line 57
    new-instance v2, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$1;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, v4}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$1;-><init>(Ljr2;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v2}, Ld5b;->c(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v2, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;

    .line 68
    .line 69
    iget-object v5, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2;->b:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 70
    .line 71
    invoke-direct {v2, v5, v4}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$2$2;-><init>(Lteam/opay/business/transfer/flow/api/CashBackReq;Ljr2;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v4, v2, v3, v4}, Ld5b;->b(Landroidx/paging/PagingData;Landroidx/paging/TerminalSeparatorType;Lhm6;ILjava/lang/Object;)Landroidx/paging/PagingData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput v3, v0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1$2$1;->label:I

    .line 79
    .line 80
    invoke-interface {p2, p1, v0}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p1
.end method
