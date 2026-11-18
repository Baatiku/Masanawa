.class final Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeyBoardHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.account.KeyBoardHelper$startListenerOtp$1$1"
    f = "KeyBoardHelper.kt"
    l = {
        0xdf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $codeInput:Lteam/opay/core/android/views/CodeInputField;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentTime:J

.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/KeyBoardHelper;


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/account/KeyBoardHelper;Landroid/content/Context;JLteam/opay/core/android/views/CodeInputField;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lteam/opay/pay/account/KeyBoardHelper;",
            "Landroid/content/Context;",
            "J",
            "Lteam/opay/core/android/views/CodeInputField;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$lifecycleOwner:Lag8;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->this$0:Lteam/opay/pay/account/KeyBoardHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-wide p4, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$currentTime:J

    .line 8
    .line 9
    iput-object p6, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$codeInput:Lteam/opay/core/android/views/CodeInputField;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 8
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
    new-instance p1, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$lifecycleOwner:Lag8;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->this$0:Lteam/opay/pay/account/KeyBoardHelper;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iget-wide v4, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$currentTime:J

    .line 10
    .line 11
    iget-object v6, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$codeInput:Lteam/opay/core/android/views/CodeInputField;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;-><init>(Lag8;Lteam/opay/pay/account/KeyBoardHelper;Landroid/content/Context;JLteam/opay/core/android/views/CodeInputField;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->label:I

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
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$lifecycleOwner:Lag8;

    .line 25
    .line 26
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->this$0:Lteam/opay/pay/account/KeyBoardHelper;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$context:Landroid/content/Context;

    .line 45
    .line 46
    iget-wide v3, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$currentTime:J

    .line 47
    .line 48
    invoke-static {v3, v4}, Ldf1;->e(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v3, v1, v2, v3}, Lteam/opay/core/android/ContextKt;->h(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_5

    .line 66
    .line 67
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lteam/opay/pay/kyc/a;->s(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    iget-object v1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->$codeInput:Lteam/opay/core/android/views/CodeInputField;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->this$0:Lteam/opay/pay/account/KeyBoardHelper;

    .line 92
    .line 93
    invoke-virtual {v1}, Lteam/opay/pay/account/KeyBoardHelper;->f()Lt1b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v1, v1, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->this$0:Lteam/opay/pay/account/KeyBoardHelper;

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/pay/account/KeyBoardHelper;->f()Lt1b;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    iget-object v1, v1, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iput v2, p0, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1$1;->label:I

    .line 122
    .line 123
    const-wide/16 v3, 0x7d0

    .line 124
    .line 125
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_2

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
