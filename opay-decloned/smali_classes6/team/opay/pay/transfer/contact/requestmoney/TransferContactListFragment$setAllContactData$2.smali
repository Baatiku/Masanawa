.class final Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->I0(Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.requestmoney.TransferContactListFragment$setAllContactData$2"
    f = "TransferContactListFragment.kt"
    l = {
        0x1fc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

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

.method public static synthetic c(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->invokeSuspend$lambda$6$lambda$3(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invokeSuspend$lambda$6$lambda$3(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

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
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

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
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

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
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

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
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :cond_2
    const/4 p0, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    const-string p1, ""

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    :goto_0
    return p0
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
    new-instance p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->label:I

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
    goto/16 :goto_6

    .line 16
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
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 39
    .line 40
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "access$getAllContactList$p(...)"

    .line 45
    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 50
    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->e0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "access$getLocalContactList$p(...)"

    .line 57
    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_7

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 76
    .line 77
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->c0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Ljava/lang/CharSequence;

    .line 90
    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    invoke-static {v7}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->c0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setName(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_4
    :goto_1
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategoryByName(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v6, v7}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setCategory(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-eqz v7, :cond_2

    .line 137
    .line 138
    invoke-static {v7}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_5

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-nez v7, :cond_6

    .line 150
    .line 151
    const-string v7, ""

    .line 152
    .line 153
    :cond_6
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_7
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    const-string v6, "access$getAllContactList$p(...)"

    .line 162
    .line 163
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_b

    .line 175
    .line 176
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 181
    .line 182
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-eqz v7, :cond_8

    .line 187
    .line 188
    invoke-static {v7}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_9

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    if-nez v7, :cond_a

    .line 200
    .line 201
    const-string v7, ""

    .line 202
    .line 203
    :cond_a
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_b
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v5, "<get-values>(...)"

    .line 219
    .line 220
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    check-cast v1, Ljava/lang/Iterable;

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_f

    .line 234
    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 240
    .line 241
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v5, v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategoryByName(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v5, v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setCategory(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    if-nez v6, :cond_c

    .line 257
    .line 258
    const-string v6, "#"

    .line 259
    .line 260
    :cond_c
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_e

    .line 265
    .line 266
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    if-nez v6, :cond_d

    .line 271
    .line 272
    const-string v6, "#"

    .line 273
    .line 274
    :cond_d
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_e
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_f
    :try_start_1
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v5, "access$getAllContactList$p(...)"

    .line 290
    .line 291
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v5, Lteam/opay/pay/transfer/contact/requestmoney/a;

    .line 295
    .line 296
    invoke-direct {v5}, Lteam/opay/pay/transfer/contact/requestmoney/a;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :catch_0
    move-exception v1

    .line 304
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    :goto_4
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->n0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 315
    .line 316
    .line 317
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    new-instance v5, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2$invokeSuspend$lambda$6$$inlined$sortedBy$1;

    .line 322
    .line 323
    invoke-direct {v5}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2$invokeSuspend$lambda$6$$inlined$sortedBy$1;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    .line 332
    .line 333
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    const-string v1, "#"

    .line 338
    .line 339
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_10

    .line 344
    .line 345
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    const-string v1, "#"

    .line 350
    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    const-string v1, "#"

    .line 359
    .line 360
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    :cond_10
    sget-object p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E:Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;

    .line 364
    .line 365
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;->a()Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;->a()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v4, "access$getAllContactList$p(...)"

    .line 381
    .line 382
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    new-instance v4, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_12

    .line 399
    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    move-object v6, v5

    .line 405
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 406
    .line 407
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isDefaultSaved()Ljava/lang/Boolean;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    const/4 v7, 0x0

    .line 412
    invoke-static {v7}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    if-eqz v6, :cond_11

    .line 421
    .line 422
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_12
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    .line 428
    .line 429
    monitor-exit v3

    .line 430
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 431
    .line 432
    iput v2, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setAllContactData$2;->label:I

    .line 433
    .line 434
    invoke-static {p1, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->l0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    if-ne p1, v0, :cond_13

    .line 439
    .line 440
    return-object v0

    .line 441
    :cond_13
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 442
    .line 443
    return-object p1

    .line 444
    :goto_7
    monitor-exit v3

    .line 445
    throw p1
.end method
