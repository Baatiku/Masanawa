.class final Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TypewriterTextView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "La66<",
        "-",
        "Ljava/lang/String;",
        ">;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "La66;",
        "",
        "",
        "<anonymous>",
        "(La66;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.android.views.TypewriterTextView$setTextWithAnimation$1$1"
    f = "TypewriterTextView.kt"
    l = {
        0x66,
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

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
    new-instance v0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(La66;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->invoke(La66;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$1:I

    .line 17
    .line 18
    iget v5, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$0:I

    .line 19
    .line 20
    iget-object v6, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v6, Lteam/opay/pay/android/views/TypewriterTextView;

    .line 23
    .line 24
    iget-object v7, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v7, Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v8, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v8, La66;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v8

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    iget v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$2:I

    .line 47
    .line 48
    iget v5, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$1:I

    .line 49
    .line 50
    iget v6, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$0:I

    .line 51
    .line 52
    iget-object v7, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Lteam/opay/pay/android/views/TypewriterTextView;

    .line 55
    .line 56
    iget-object v8, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v8, Ljava/lang/CharSequence;

    .line 59
    .line 60
    iget-object v9, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v9, La66;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object p1, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, La66;

    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 77
    .line 78
    invoke-static {v1}, Lteam/opay/pay/android/views/TypewriterTextView;->g(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v5, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->this$0:Lteam/opay/pay/android/views/TypewriterTextView;

    .line 83
    .line 84
    move-object v6, v5

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ge v7, v8, :cond_5

    .line 92
    .line 93
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 94
    .line 95
    .line 96
    add-int/lit8 v8, v5, 0x1

    .line 97
    .line 98
    invoke-static {v6}, Lteam/opay/pay/android/views/TypewriterTextView;->i(Lteam/opay/pay/android/views/TypewriterTextView;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$1:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v6, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$2:Ljava/lang/Object;

    .line 107
    .line 108
    iput v8, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$0:I

    .line 109
    .line 110
    iput v7, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$1:I

    .line 111
    .line 112
    iput v5, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$2:I

    .line 113
    .line 114
    iput v4, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->label:I

    .line 115
    .line 116
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    if-ne v9, v0, :cond_3

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_3
    move v11, v8

    .line 124
    move-object v8, v1

    .line 125
    move v1, v5

    .line 126
    move v5, v7

    .line 127
    move-object v7, v6

    .line 128
    move v6, v11

    .line 129
    :goto_1
    invoke-static {v7}, Lteam/opay/pay/android/views/TypewriterTextView;->g(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    add-int/2addr v1, v4

    .line 134
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v9, "substring(...)"

    .line 139
    .line 140
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v7, v1}, Lteam/opay/pay/android/views/TypewriterTextView;->k(Lteam/opay/pay/android/views/TypewriterTextView;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v7}, Lteam/opay/pay/android/views/TypewriterTextView;->c(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v7, v1}, Lteam/opay/pay/android/views/TypewriterTextView;->l(Lteam/opay/pay/android/views/TypewriterTextView;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v7}, Lteam/opay/pay/android/views/TypewriterTextView;->c(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v8, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v7, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput v6, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$0:I

    .line 168
    .line 169
    iput v5, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->I$1:I

    .line 170
    .line 171
    iput v2, p0, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1$1;->label:I

    .line 172
    .line 173
    invoke-interface {p1, v1, p0}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-ne v1, v0, :cond_4

    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_4
    move v1, v5

    .line 181
    move v5, v6

    .line 182
    move-object v6, v7

    .line 183
    move-object v7, v8

    .line 184
    :goto_2
    add-int/2addr v1, v4

    .line 185
    move-object v11, v7

    .line 186
    move v7, v1

    .line 187
    move-object v1, v11

    .line 188
    goto :goto_0

    .line 189
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1
.end method
