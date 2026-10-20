.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W0(Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$postHomeAdapterData$1"
    f = "NewPayViewModel.kt"
    l = {
        0x139
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cache:Z

.field final synthetic $newPayData:Lcom/opay/team/newhome/bean/NewPayData;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            "Z",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$cache:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$cache:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLjr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$cache:Z

    .line 32
    .line 33
    invoke-static {p1, v1, v3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;Z)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 44
    .line 45
    iget-boolean v7, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$cache:Z

    .line 46
    .line 47
    iget-object v8, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    move-object v4, v1

    .line 51
    invoke-direct/range {v4 .. v9}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljava/util/List;ZLcom/opay/team/newhome/bean/NewPayData;Ljr2;)V

    .line 52
    .line 53
    .line 54
    iput v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->label:I

    .line 55
    .line 56
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p1
.end method
