.class final Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferClipboardParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.home.clipboard.TransferClipboardParser$checkClipboard$1$1"
    f = "TransferClipboardParser.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $clipData:Lteam/opay/pay/home/OPayClipData;

.field final synthetic $fromAA:Z

.field final synthetic $saveTime:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/OPayClipData;Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/OPayClipData;",
            "Lteam/opay/pay/home/clipboard/TransferClipboardParser;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$fromAA:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$saveTime:Z

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$fromAA:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$saveTime:Z

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;-><init>(Lteam/opay/pay/home/OPayClipData;Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/home/OPayClipData;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-boolean v3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$fromAA:Z

    .line 38
    .line 39
    invoke-static {v1, p1, v3}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->f(Lteam/opay/pay/home/clipboard/TransferClipboardParser;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 46
    .line 47
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 48
    .line 49
    invoke-virtual {v1}, Lteam/opay/pay/home/OPayClipData;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$saveTime:Z

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 61
    .line 62
    invoke-static {p1}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->d(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Lteam/opay/core/settings/NoClearStorage;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 67
    .line 68
    invoke-virtual {v1}, Lteam/opay/pay/home/OPayClipData;->c()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-virtual {p1, v3, v4}, Lteam/opay/core/settings/NoClearStorage;->J1(J)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1$1;

    .line 80
    .line 81
    iget-object v3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    iget-object v4, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->$clipData:Lteam/opay/pay/home/OPayClipData;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-direct {v1, v3, v4, v5}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/home/OPayClipData;Ljr2;)V

    .line 87
    .line 88
    .line 89
    iput v2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;->label:I

    .line 90
    .line 91
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-ne p1, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p1
.end method
