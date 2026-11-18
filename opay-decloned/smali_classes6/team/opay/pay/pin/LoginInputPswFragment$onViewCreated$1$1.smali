.class final Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginInputPswFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.pin.LoginInputPswFragment$onViewCreated$1$1"
    f = "LoginInputPswFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $show:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/pin/LoginInputPswFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/LoginInputPswFragment;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/pin/LoginInputPswFragment;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->$show:Z

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
    new-instance p1, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 4
    .line 5
    iget-boolean v1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->$show:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;-><init>(Lteam/opay/pay/pin/LoginInputPswFragment;ZLjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lae6;

    .line 18
    .line 19
    iget-object p1, p1, Lae6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const-string v0, "fingerprintIv"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->$show:Z

    .line 27
    .line 28
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->$show:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lx7b;->a:Lx7b;

    .line 36
    .line 37
    iget-object v0, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/pin/LoginInputPswFragment;->E1()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "phone"

    .line 44
    .line 45
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lteam/opay/pay/pin/LoginInputPswFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 50
    .line 51
    invoke-virtual {v1}, Lteam/opay/pay/pin/LoginInputPswFragment;->E1()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "is_phone"

    .line 64
    .line 65
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [Lkotlin/Pair;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    aput-object v0, v2, v3

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    aput-object v1, v2, v0

    .line 77
    .line 78
    const-string v0, "login_enterpassword_biometric_show"

    .line 79
    .line 80
    invoke-virtual {p1, v0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method
