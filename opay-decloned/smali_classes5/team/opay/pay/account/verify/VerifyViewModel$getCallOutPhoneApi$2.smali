.class final Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyViewModel;->H(Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;
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
        "Lretrofit2/Call<",
        "Lteam/opay/pay/api/HttpResponse<",
        "Ljava/lang/Object;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lzr2;",
        "Lretrofit2/Call;",
        "Lteam/opay/pay/api/HttpResponse;",
        "",
        "<anonymous>",
        "(Lzr2;)Lretrofit2/Call;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.account.verify.VerifyViewModel$getCallOutPhoneApi$2"
    f = "VerifyViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $req:Lteam/opay/pay/account/OutCallReq;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/OutCallReq;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyViewModel;",
            "Lteam/opay/pay/account/OutCallReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->$req:Lteam/opay/pay/account/OutCallReq;

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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->$req:Lteam/opay/pay/account/OutCallReq;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/OutCallReq;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->C(Lteam/opay/pay/account/verify/VerifyViewModel;)Lev;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;->$req:Lteam/opay/pay/account/OutCallReq;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lev;->h(Lteam/opay/pay/account/OutCallReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
