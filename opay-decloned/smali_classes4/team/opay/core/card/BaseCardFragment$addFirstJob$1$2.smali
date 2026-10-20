.class public final Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;
.super Ljava/lang/Object;
.source "BaseCardFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Lteam/opay/core/card/BaseCardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/card/BaseCardFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;->a:Lteam/opay/core/card/BaseCardFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lkotlin/Pair;Ljr2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;+",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;->a:Lteam/opay/core/card/BaseCardFragment;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    .line 5
    new-instance v2, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v0, p1, v3}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2$1;-><init>(Lteam/opay/core/card/BaseCardFragment;Lkotlin/Pair;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt;->a(Lag8;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;->c(Lkotlin/Pair;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
