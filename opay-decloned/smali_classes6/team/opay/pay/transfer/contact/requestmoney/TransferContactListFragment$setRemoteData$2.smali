.class final Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->M0(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.requestmoney.TransferContactListFragment$setRemoteData$2"
    f = "TransferContactListFragment.kt"
    l = {
        0x116
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $rsp:Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->$rsp:Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->$rsp:Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "access$getAllContactList$p(...)"

    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->$rsp:Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 40
    .line 41
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 83
    .line 84
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-nez v5, :cond_4

    .line 96
    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_4
    invoke-static {v3, v5}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->r0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    :goto_1
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->o0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_6

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 129
    .line 130
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-static {v3, v1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->p0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->c0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 142
    .line 143
    .line 144
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_b

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 159
    .line 160
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4, v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategoryByName(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v4, v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setCategory(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v4, v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->normalPhone(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setPhone(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v5, 0x4

    .line 183
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setType(Ljava/lang/Integer;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_a

    .line 195
    .line 196
    invoke-static {v5}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_8

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_8
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->c0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const-string v6, "access$getAllContactMap$p(...)"

    .line 208
    .line 209
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    if-nez v7, :cond_9

    .line 221
    .line 222
    const-string v7, ""

    .line 223
    .line 224
    :cond_9
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_5
    invoke-static {v3}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .line 237
    monitor-exit p1

    .line 238
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 239
    .line 240
    iput v2, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$setRemoteData$2;->label:I

    .line 241
    .line 242
    invoke-static {p1, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->m0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-ne p1, v0, :cond_c

    .line 247
    .line 248
    return-object v0

    .line 249
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 250
    .line 251
    return-object p1

    .line 252
    :goto_7
    monitor-exit p1

    .line 253
    throw v0
.end method
