.class final Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyOutCallFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyOutCallFragment;->H0(Ljava/lang/String;)V
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
    c = "team.opay.pay.account.verify.VerifyOutCallFragment$updateRealCallText$1"
    f = "VerifyOutCallFragment.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyOutCallFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->$text:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->$text:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->label:I

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
    iput v2, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->label:I

    .line 28
    .line 29
    const-wide/16 v3, 0x3e8

    .line 30
    .line 31
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->z0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-gtz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->A0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {p1, v0}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->B0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lawf;

    .line 62
    .line 63
    iget-object p1, p1, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lawf;

    .line 75
    .line 76
    iget-object p1, p1, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->$text:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 85
    .line 86
    invoke-static {p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->z0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 91
    .line 92
    add-int/lit8 p1, p1, -0x1

    .line 93
    .line 94
    invoke-static {v0, p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->B0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lawf;

    .line 104
    .line 105
    iget-object p1, p1, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->this$0:Lteam/opay/pay/account/verify/VerifyOutCallFragment;

    .line 112
    .line 113
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;->$text:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1, v0}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->C0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method
