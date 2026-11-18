.class final Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardFragment$getCardLocationHeight$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.card.CardFragment$getCardLocationHeight$1$1"
    f = "CardFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/core/card/CardFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/CardFragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->this$0:Lteam/opay/core/card/CardFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->invokeSuspend$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->invokeSuspend$lambda$2(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/card/BaseCardFragment;->x0()Lteam/opay/core/card/CardAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/card/CardAdapter;->C()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, -0x1

    .line 14
    :goto_0
    if-eq p2, v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lteam/opay/core/card/CardFragment;->i1(Lteam/opay/core/card/CardFragment;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lic6;

    .line 33
    .line 34
    iget-object p2, p2, Lic6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    instance-of v0, p2, Lteam/opay/core/card/GridLayoutManagerNotifyComolete;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p2, Lteam/opay/core/card/GridLayoutManagerNotifyComolete;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p2, 0x0

    .line 48
    :goto_1
    if-eqz p2, :cond_3

    .line 49
    .line 50
    new-instance v0, Lteam/opay/core/card/a;

    .line 51
    .line 52
    invoke-direct {v0, p1, p0, p2}, Lteam/opay/core/card/a;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lteam/opay/core/card/GridLayoutManagerNotifyComolete;->I(Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Lteam/opay/core/card/CardFragment;Lteam/opay/core/card/GridLayoutManagerNotifyComolete;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lteam/opay/core/card/CardFragment;->i1(Lteam/opay/core/card/CardFragment;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p2, p0}, Lteam/opay/core/card/GridLayoutManagerNotifyComolete;->I(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->this$0:Lteam/opay/core/card/CardFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;-><init>(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->this$0:Lteam/opay/core/card/CardFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/core/card/CardFragment;->j1(Lteam/opay/core/card/CardFragment;)Lteam/opay/pay/util/SingleLiveEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->this$0:Lteam/opay/core/card/CardFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->this$0:Lteam/opay/core/card/CardFragment;

    .line 24
    .line 25
    iget-object v2, p0, Lteam/opay/core/card/CardFragment$getCardLocationHeight$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    new-instance v3, Lteam/opay/core/card/b;

    .line 28
    .line 29
    invoke-direct {v3, v1, v2}, Lteam/opay/core/card/b;-><init>(Lteam/opay/core/card/CardFragment;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v3}, Lnna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
