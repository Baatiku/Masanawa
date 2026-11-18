.class public final Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;
.super Ljava/lang/Object;
.source "ShareViewModel.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/cashier/result/ShareViewModel;

.field public final synthetic b:Lag8;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/result/ShareViewModel;Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/ShareViewModel;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->a:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->b:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 37
    .line 38
    invoke-direct {v2, v4}, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;-><init>(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v7, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;

    .line 46
    .line 47
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->a:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 48
    .line 49
    iget-object v3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->b:Lag8;

    .line 50
    .line 51
    iget-object v5, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->c:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    move-object v0, v7

    .line 55
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;-><init>(Lteam/opay/pay/cashier/result/ShareViewModel;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Lag8;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v7, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-ne p1, p2, :cond_1

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->c(Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
