.class final Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;
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
    c = "team.opay.pay.android.views.TypewriterTextView$setTextWithAnimation$2"
    f = "TypewriterTextView.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

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
            "Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

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
    new-instance v0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->label:I

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
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lzr2;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

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
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 43
    .line 44
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->j(Lteam/opay/pay/android/views/TypewriterTextView;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->f(Lteam/opay/pay/android/views/TypewriterTextView;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    xor-int/2addr v3, v2

    .line 57
    invoke-static {p1, v3}, Lteam/opay/pay/android/views/TypewriterTextView;->m(Lteam/opay/pay/android/views/TypewriterTextView;Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 66
    .line 67
    invoke-static {p1}, Lteam/opay/pay/android/views/TypewriterTextView;->d(Lteam/opay/pay/android/views/TypewriterTextView;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    iput-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput v2, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;->label:I

    .line 74
    .line 75
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_2

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p1
.end method
