.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$postHomeAdapterData$1$1"
    f = "NewPayViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cache:Z

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newPayData:Lcom/opay/team/newhome/bean/NewPayData;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljava/util/List;ZLcom/opay/team/newhome/bean/NewPayData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;Z",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$cache:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$list:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$cache:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljava/util/List;ZLcom/opay/team/newhome/bean/NewPayData;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$list:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/opay/team/newhome/home/HomeAdapter;->k:Lcom/opay/team/newhome/home/HomeAdapter$Companion;

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$cache:Z

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/home/HomeAdapter$Companion;->b(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$cache:Z

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1$1;->$newPayData:Lcom/opay/team/newhome/bean/NewPayData;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
