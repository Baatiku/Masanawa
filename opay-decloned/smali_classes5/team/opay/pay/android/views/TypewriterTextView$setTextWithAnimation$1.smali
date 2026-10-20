.class final Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TypewriterTextView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/android/views/TypewriterTextView;->setTextWithAnimation(Ljava/lang/String;)V
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
    c = "team.opay.pay.android.views.TypewriterTextView$setTextWithAnimation$1"
    f = "TypewriterTextView.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/android/views/TypewriterTextView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/android/views/TypewriterTextView;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

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
    new-instance p1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;

    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 31
    .line 32
    invoke-direct {p1, v1, v2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ly86;->G(Lkotlin/jvm/functions/Function2;)Lv56;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$a;

    .line 40
    .line 41
    iget-object v4, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 42
    .line 43
    invoke-direct {v1, v4}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$a;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;)V

    .line 44
    .line 45
    .line 46
    iput v3, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->label:I

    .line 47
    .line 48
    invoke-interface {p1, v1, p0}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {p1, v0}, Lteam/opay/pay/android/views/TypewriterTextView;->n(Lteam/opay/pay/android/views/TypewriterTextView;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 62
    .line 63
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->h(Lteam/opay/pay/android/views/TypewriterTextView;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 70
    .line 71
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->e(Lteam/opay/pay/android/views/TypewriterTextView;)Lkotlinx/coroutines/l;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-static {p1, v2, v3, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 81
    .line 82
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->g(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1
.end method
