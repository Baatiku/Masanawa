.class final Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferCheckNameDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.pay.home.tabs.TransferCheckNameDialogFragment$onViewCreated$1"
    f = "TransferCheckNameDialogFragment.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;-><init>(Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget v4, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->label:I

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    if-ne v4, v2, :cond_0

    .line 13
    .line 14
    iget v4, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->I$0:I

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lh2f;

    .line 38
    .line 39
    iget-object p1, p1, Lh2f;->c:Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v0, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lh2f;

    .line 54
    .line 55
    iget-object p1, p1, Lh2f;->c:Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    sget v5, Lteam/opay/pay/R$string;->osdk_continue_with_timer:I

    .line 58
    .line 59
    rsub-int/lit8 v6, v4, 0x3

    .line 60
    .line 61
    invoke-static {v6}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-array v7, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v6, v7, v1

    .line 68
    .line 69
    invoke-static {v5, v7}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iput v4, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->I$0:I

    .line 77
    .line 78
    iput v2, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->label:I

    .line 79
    .line 80
    const-wide/16 v5, 0x3e8

    .line 81
    .line 82
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v3, :cond_2

    .line 87
    .line 88
    return-object v3

    .line 89
    :cond_2
    :goto_1
    add-int/2addr v4, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lh2f;

    .line 98
    .line 99
    iget-object p1, p1, Lh2f;->c:Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    sget v0, Lteam/opay/pay/R$string;->osdk_ad_continue:I

    .line 102
    .line 103
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$onViewCreated$1;->this$0:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 111
    .line 112
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lh2f;

    .line 117
    .line 118
    iget-object p1, p1, Lh2f;->c:Lcom/google/android/material/button/MaterialButton;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1
.end method
