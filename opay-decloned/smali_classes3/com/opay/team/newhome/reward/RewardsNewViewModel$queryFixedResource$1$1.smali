.class final Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1$a;
    }
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
    c = "com.opay.team.newhome.reward.RewardsNewViewModel$queryFixedResource$1$1"
    f = "RewardsNewViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $call:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/FixedResources;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewLifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/FixedResources;",
            ">;>;",
            "Lag8;",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$viewLifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

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

.method public static synthetic c(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->invokeSuspend$lambda$1(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/opay/team/newhome/reward/FixedResources;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->K0(Lcom/opay/team/newhome/reward/FixedResources;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-static {p0, v1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Z)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$viewLifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->$viewLifecycleOwner:Lag8;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 16
    .line 17
    new-instance v2, Lcom/opay/team/newhome/reward/f;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/reward/f;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
