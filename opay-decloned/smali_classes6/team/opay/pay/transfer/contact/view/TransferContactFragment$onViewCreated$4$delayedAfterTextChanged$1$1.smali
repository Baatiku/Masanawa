.class final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.view.TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1"
    f = "TransferContactFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $s:Landroid/text/Editable;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(Landroid/text/Editable;Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$s:Landroid/text/Editable;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$list:Ljava/util/List;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$s:Landroid/text/Editable;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$list:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;-><init>(Landroid/text/Editable;Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$s:Landroid/text/Editable;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$list:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->n0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lmi6;

    .line 36
    .line 37
    iget-object p1, p1, Lmi6;->g:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->$list:Ljava/util/List;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p1, v0, v1}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->p0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$4$delayedAfterTextChanged$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lmi6;

    .line 60
    .line 61
    iget-object p1, p1, Lmi6;->g:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    sget-object v0, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 66
    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    const/4 v0, 0x1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 v1, 0x0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 94
    :goto_2
    xor-int/2addr v0, v1

    .line 95
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method
