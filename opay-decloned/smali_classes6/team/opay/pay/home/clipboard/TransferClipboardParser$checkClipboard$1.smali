.class final Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferClipboardParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/TransferClipboardParser;->g(ZZLkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.home.clipboard.TransferClipboardParser$checkClipboard$1"
    f = "TransferClipboardParser.kt"
    l = {
        0x15,
        0x16
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

.field final synthetic $fromAA:Z

.field final synthetic $saveTime:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/clipboard/TransferClipboardParser;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$fromAA:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$saveTime:Z

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$fromAA:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$saveTime:Z

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;-><init>(Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->label:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->e(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Lteam/opay/pay/home/ClipboardAutoReader;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 41
    .line 42
    invoke-static {v1}, Lteam/opay/pay/home/clipboard/TransferClipboardParser;->c(Lteam/opay/pay/home/clipboard/TransferClipboardParser;)Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput v3, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->label:I

    .line 47
    .line 48
    invoke-virtual {p1, v1, p0}, Lteam/opay/pay/home/ClipboardAutoReader;->i(Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    :goto_0
    move-object v4, p1

    .line 56
    check-cast v4, Lteam/opay/pay/home/OPayClipData;

    .line 57
    .line 58
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v1, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;

    .line 63
    .line 64
    iget-object v5, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->this$0:Lteam/opay/pay/home/clipboard/TransferClipboardParser;

    .line 65
    .line 66
    iget-boolean v6, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$fromAA:Z

    .line 67
    .line 68
    iget-boolean v7, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$saveTime:Z

    .line 69
    .line 70
    iget-object v8, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v3, v1

    .line 74
    invoke-direct/range {v3 .. v9}, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1$1;-><init>(Lteam/opay/pay/home/OPayClipData;Lteam/opay/pay/home/clipboard/TransferClipboardParser;ZZLkotlin/jvm/functions/Function1;Ljr2;)V

    .line 75
    .line 76
    .line 77
    iput v2, p0, Lteam/opay/pay/home/clipboard/TransferClipboardParser$checkClipboard$1;->label:I

    .line 78
    .line 79
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_4

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1
.end method
