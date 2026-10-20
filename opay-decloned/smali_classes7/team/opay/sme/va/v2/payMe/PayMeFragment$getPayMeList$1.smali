.class final Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayMeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/payMe/PayMeFragment;->i0()V
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
    c = "team.opay.sme.va.v2.payMe.PayMeFragment$getPayMeList$1"
    f = "PayMeFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $servicesCode:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->$servicesCode:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

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
    new-instance p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->$servicesCode:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;-><init>(Ljava/lang/String;Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lw3c;->b:Lw3c;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->$servicesCode:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lw3c;->e(Ljava/lang/String;)Lteam/opay/business/provider/active/HomeListResponse;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$getPayMeList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v0, p1, v1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->a0(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Lteam/opay/business/provider/active/HomeListResponse;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
