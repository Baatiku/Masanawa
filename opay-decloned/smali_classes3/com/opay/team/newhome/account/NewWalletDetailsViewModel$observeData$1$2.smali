.class final Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewWalletDetailsViewModel.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        "Lteam/opay/core/android/arch/Resource<",
        "+",
        "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
        ">;",
        "Ljr2<",
        "-",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        "data",
        "banner",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "com.opay.team.newhome.account.NewWalletDetailsViewModel$observeData$1$2"
    f = "NewWalletDetailsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
            ">;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;

    invoke-direct {v0, p3}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;-><init>(Ljr2;)V

    iput-object p1, v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

    check-cast p2, Lteam/opay/core/android/arch/Resource;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->invoke(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;Lteam/opay/core/android/arch/Resource;Ljr2;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$2;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/core/android/arch/Resource;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->e(Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
