.class final Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyEmailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyEmailFragment;->R0()V
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
    c = "team.opay.pay.account.verify.VerifyEmailFragment$setCountdownTime$1"
    f = "VerifyEmailFragment.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field J$0:J

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyEmailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyEmailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;-><init>(Lteam/opay/pay/account/verify/VerifyEmailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->label:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->J$0:J

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/pay/account/verify/VerifyEmailFragment;->D0(Lteam/opay/pay/account/verify/VerifyEmailFragment;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :cond_2
    :goto_0
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long p1, v2, v4

    .line 38
    .line 39
    if-ltz p1, :cond_4

    .line 40
    .line 41
    const/16 v4, 0x3e8

    .line 42
    .line 43
    int-to-long v4, v4

    .line 44
    div-long v6, v2, v4

    .line 45
    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v6, "s"

    .line 55
    .line 56
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget v7, Lteam/opay/pay/R$string;->osdk_didn_t_receive_code:I

    .line 64
    .line 65
    invoke-static {v7}, Ljmf;->k(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    sget v9, Lteam/opay/pay/R$string;->osdk_no_code_otp:I

    .line 70
    .line 71
    new-array v10, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    aput-object v6, v10, v11

    .line 75
    .line 76
    invoke-static {v9, v10}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, " "

    .line 89
    .line 90
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iget-object v8, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

    .line 101
    .line 102
    invoke-virtual {v8}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Lfj6;

    .line 107
    .line 108
    iget-object v8, v8, Lfj6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-static {v6}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    if-nez p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

    .line 120
    .line 121
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lfj6;

    .line 126
    .line 127
    iget-object p1, p1, Lfj6;->n:Lcom/google/android/material/button/MaterialButton;

    .line 128
    .line 129
    const-string v0, "verifyResend"

    .line 130
    .line 131
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->this$0:Lteam/opay/pay/account/verify/VerifyEmailFragment;

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lfj6;

    .line 144
    .line 145
    iget-object p1, p1, Lfj6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-static {v7}, Ljmf;->k(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    sub-long/2addr v2, v4

    .line 156
    iput-wide v2, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->J$0:J

    .line 157
    .line 158
    iput v0, p0, Lteam/opay/pay/account/verify/VerifyEmailFragment$setCountdownTime$1;->label:I

    .line 159
    .line 160
    const-wide/16 v4, 0x3e8

    .line 161
    .line 162
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-ne p1, v1, :cond_2

    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
