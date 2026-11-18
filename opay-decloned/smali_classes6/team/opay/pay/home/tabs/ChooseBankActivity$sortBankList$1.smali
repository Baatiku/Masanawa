.class final Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChooseBankActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ChooseBankActivity;->o0(Ljava/util/List;)V
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
    c = "team.opay.pay.home.tabs.ChooseBankActivity$sortBankList$1"
    f = "ChooseBankActivity.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ChooseBankActivity;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/tabs/ChooseBankActivity;",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->$it:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->invokeSuspend$lambda$3(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invokeSuspend$lambda$3(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 p0, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    :goto_0
    return p0
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
    new-instance p1, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->$it:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;-><init>(Lteam/opay/pay/home/tabs/ChooseBankActivity;Ljava/util/List;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 31
    .line 32
    invoke-static {v2}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->O(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->$it:Ljava/util/List;

    .line 40
    .line 41
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_7

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lteam/opay/pay/bank/Bank;

    .line 58
    .line 59
    new-instance v15, Lteam/opay/pay/home/tabs/BankInfo;

    .line 60
    .line 61
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->c()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->h()Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->g()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->b()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->f()Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v16

    .line 89
    const/16 v17, 0xc0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    move-object v6, v15

    .line 96
    move-object/from16 v19, v15

    .line 97
    .line 98
    move-object/from16 v15, v16

    .line 99
    .line 100
    move/from16 v16, v17

    .line 101
    .line 102
    move-object/from16 v17, v18

    .line 103
    .line 104
    invoke-direct/range {v6 .. v17}, Lteam/opay/pay/home/tabs/BankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lteam/opay/pay/bank/Bank;->e()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const-string v7, "#"

    .line 116
    .line 117
    if-lez v6, :cond_4

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "substring(...)"

    .line 125
    .line 126
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v8, "getDefault(...)"

    .line 134
    .line 135
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v6, "toUpperCase(...)"

    .line 143
    .line 144
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v9, Lkotlin/text/Regex;

    .line 148
    .line 149
    const-string v10, "[A-Z]"

    .line 150
    .line 151
    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_3

    .line 159
    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v6, v19

    .line 175
    .line 176
    invoke-virtual {v6, v5}, Lteam/opay/pay/home/tabs/BankInfo;->setLetter(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    move-object/from16 v6, v19

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Lteam/opay/pay/home/tabs/BankInfo;->setLetter(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    move-object/from16 v6, v19

    .line 187
    .line 188
    invoke-virtual {v6, v7}, Lteam/opay/pay/home/tabs/BankInfo;->setLetter(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-virtual {v6}, Lteam/opay/pay/home/tabs/BankInfo;->getOpayBank()Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_6

    .line 204
    .line 205
    invoke-static {v4}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->P(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    const-string v7, "value_native_choose_bank_from_regular_ac"

    .line 210
    .line 211
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_5

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    const/4 v15, 0x0

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    :goto_2
    move-object v15, v6

    .line 221
    :goto_3
    if-eqz v15, :cond_2

    .line 222
    .line 223
    invoke-static {v4}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->O(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_7
    :try_start_0
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 233
    .line 234
    invoke-static {v2}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->O(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    new-instance v4, Lteam/opay/pay/home/tabs/a;

    .line 239
    .line 240
    invoke-direct {v4}, Lteam/opay/pay/home/tabs/a;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :catch_0
    nop

    .line 248
    :goto_4
    sget-object v2, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 249
    .line 250
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->b(Landroidx/fragment/app/FragmentActivity;)V

    .line 253
    .line 254
    .line 255
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 256
    .line 257
    invoke-static {v2}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->N(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Lteam/opay/pay/home/tabs/BankListAdapter;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 262
    .line 263
    invoke-static {v4}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->Q(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Lteam/opay/pay/api/UserBanksMate;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object v5, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 268
    .line 269
    invoke-static {v5}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->O(Lteam/opay/pay/home/tabs/ChooseBankActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iput v3, v0, Lteam/opay/pay/home/tabs/ChooseBankActivity$sortBankList$1;->label:I

    .line 274
    .line 275
    invoke-virtual {v2, v4, v5, v0}, Lteam/opay/pay/home/tabs/BankListAdapter;->z(Lteam/opay/pay/api/UserBanksMate;Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-ne v2, v1, :cond_8

    .line 280
    .line 281
    return-object v1

    .line 282
    :cond_8
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 283
    .line 284
    return-object v1
.end method
