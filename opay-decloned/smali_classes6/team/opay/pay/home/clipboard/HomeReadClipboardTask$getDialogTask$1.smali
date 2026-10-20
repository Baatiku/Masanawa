.class final Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeReadClipboardTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->e()Lkotlinx/coroutines/l;
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
    c = "team.opay.pay.home.clipboard.HomeReadClipboardTask$getDialogTask$1"
    f = "HomeReadClipboardTask.kt"
    l = {
        0x41,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

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
    new-instance p1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 39
    .line 40
    invoke-static {v1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->r(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lteam/opay/pay/home/ClipboardAutoReader;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v4, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 45
    .line 46
    invoke-static {v4}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->o(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v3, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->label:I

    .line 53
    .line 54
    invoke-virtual {p1, v4, p0}, Lteam/opay/pay/home/ClipboardAutoReader;->i(Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/pay/home/OPayClipData;

    .line 62
    .line 63
    invoke-static {v1, p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->s(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Lteam/opay/pay/home/OPayClipData;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->p(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Lteam/opay/pay/home/OPayClipData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1$1;

    .line 79
    .line 80
    iget-object v3, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-direct {v1, v3, v4}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1$1;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V

    .line 84
    .line 85
    .line 86
    iput-object v4, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v2, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$getDialogTask$1;->label:I

    .line 89
    .line 90
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_4

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
