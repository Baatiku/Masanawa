.class final Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeReadClipboardTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->A()V
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
    c = "team.opay.pay.home.clipboard.HomeReadClipboardTask$startReadClipboardTask$1$1"
    f = "HomeReadClipboardTask.kt"
    l = {
        0x2e,
        0x2f,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
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
            "Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

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
    new-instance p1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;-><init>(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->e()Lkotlinx/coroutines/l;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iput v4, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->label:I

    .line 50
    .line 51
    invoke-interface {p1, p0}, Lkotlinx/coroutines/l;->g(Ljr2;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_4
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 59
    .line 60
    iput v3, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->d(Ljr2;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_5

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_5
    :goto_1
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->this$0:Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 74
    .line 75
    invoke-static {v1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;->o(Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;)Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput v2, p0, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask$startReadClipboardTask$1$1;->label:I

    .line 80
    .line 81
    invoke-static {p1, v1, p0}, Lteam/opay/pay/base/FragmentKt;->C(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/Fragment;Ljr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_6

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
