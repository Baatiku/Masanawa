.class final Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.pay.account.verify.VerifyOtpFragment$onViewCreated$1$8$1"
    f = "VerifyOtpFragment.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:I

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyOtpFragment;


# direct methods
.method public constructor <init>(ILteam/opay/pay/account/verify/VerifyOtpFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/account/verify/VerifyOtpFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->$it:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->this$0:Lteam/opay/pay/account/verify/VerifyOtpFragment;

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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;

    .line 2
    .line 3
    iget v0, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->$it:I

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->this$0:Lteam/opay/pay/account/verify/VerifyOtpFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;-><init>(ILteam/opay/pay/account/verify/VerifyOtpFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->label:I

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
    iget p1, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->$it:I

    .line 28
    .line 29
    int-to-long v3, p1

    .line 30
    const-wide/16 v5, 0x3e8

    .line 31
    .line 32
    mul-long v3, v3, v5

    .line 33
    .line 34
    iput v2, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->label:I

    .line 35
    .line 36
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOtpFragment$onViewCreated$1$8$1;->this$0:Lteam/opay/pay/account/verify/VerifyOtpFragment;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lkj6;

    .line 50
    .line 51
    iget-object p1, p1, Lkj6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const-string v0, "otpOther"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method
