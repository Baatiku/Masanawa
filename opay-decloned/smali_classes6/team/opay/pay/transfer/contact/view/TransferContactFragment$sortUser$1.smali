.class final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->Z0(Ljava/util/List;Ljava/util/HashMap;)V
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
    c = "team.opay.pay.transfer.contact.view.TransferContactFragment$sortUser$1"
    f = "TransferContactFragment.kt"
    l = {
        0x237
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;Ljava/util/HashMap;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$dataList:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$map:Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->invokeSuspend$lambda$2(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
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
    .locals 3
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
    new-instance p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$dataList:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$map:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;-><init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/List;Ljava/util/HashMap;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

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
    iget v2, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->label:I

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
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v6, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v7, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 51
    .line 52
    invoke-static {v7}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/4 v9, 0x0

    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v7, v9

    .line 65
    :goto_0
    if-eqz v7, :cond_3

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v7, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 71
    .line 72
    invoke-static {v7}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v7, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$dataList:Ljava/util/List;

    .line 80
    .line 81
    iget-object v8, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 82
    .line 83
    iget-object v10, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->$map:Ljava/util/HashMap;

    .line 84
    .line 85
    new-instance v11, Ljava/util/ArrayList;

    .line 86
    .line 87
    const/16 v12, 0xa

    .line 88
    .line 89
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    if-eqz v13, :cond_4

    .line 105
    .line 106
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    check-cast v13, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 111
    .line 112
    invoke-static {v8, v10, v13}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->l0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/HashMap;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    new-instance v7, Lteam/opay/pay/transfer/contact/view/a;

    .line 121
    .line 122
    invoke-direct {v7}, Lteam/opay/pay/transfer/contact/view/a;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    iget-object v8, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 130
    .line 131
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-eqz v10, :cond_e

    .line 140
    .line 141
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    check-cast v10, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 146
    .line 147
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->m0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_5

    .line 152
    .line 153
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->g0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-virtual {v11, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_6

    .line 165
    .line 166
    new-instance v11, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 167
    .line 168
    const/16 v13, 0x10

    .line 169
    .line 170
    invoke-static {v13}, Ljmf;->d(I)I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    invoke-static {v13}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v19

    .line 178
    invoke-static {v12}, Ljmf;->d(I)I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    invoke-static {v13}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v20

    .line 186
    const/16 v22, 0x8a

    .line 187
    .line 188
    const/16 v23, 0x0

    .line 189
    .line 190
    const/4 v14, 0x0

    .line 191
    const/4 v15, 0x0

    .line 192
    const-string v16, "All Contacts"

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    const/16 v18, 0x4

    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    move-object v13, v11

    .line 201
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_6
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-nez v11, :cond_7

    .line 216
    .line 217
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    sub-int/2addr v13, v3

    .line 230
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-nez v11, :cond_9

    .line 243
    .line 244
    :cond_7
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    if-nez v13, :cond_8

    .line 253
    .line 254
    const-string v13, ""

    .line 255
    .line 256
    :cond_8
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 275
    .line 276
    .line 277
    new-instance v11, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 278
    .line 279
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    const/16 v22, 0xe8

    .line 284
    .line 285
    const/16 v23, 0x0

    .line 286
    .line 287
    const/4 v14, 0x1

    .line 288
    const/16 v17, 0x0

    .line 289
    .line 290
    const/16 v18, 0x4

    .line 291
    .line 292
    const/16 v19, 0x0

    .line 293
    .line 294
    const/16 v20, 0x0

    .line 295
    .line 296
    const/16 v21, 0x0

    .line 297
    .line 298
    move-object v13, v11

    .line 299
    move-object v15, v10

    .line 300
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :cond_9
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRole()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    const-string v13, "customer"

    .line 311
    .line 312
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    const-string v14, "1"

    .line 317
    .line 318
    if-eqz v13, :cond_b

    .line 319
    .line 320
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCompletedRegister()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    if-eqz v11, :cond_a

    .line 329
    .line 330
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    new-instance v15, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 335
    .line 336
    const/16 v22, 0xec

    .line 337
    .line 338
    const/16 v23, 0x0

    .line 339
    .line 340
    const/4 v14, 0x3

    .line 341
    const/16 v16, 0x0

    .line 342
    .line 343
    const/16 v17, 0x0

    .line 344
    .line 345
    const/16 v18, 0x1

    .line 346
    .line 347
    const/16 v19, 0x0

    .line 348
    .line 349
    const/16 v20, 0x0

    .line 350
    .line 351
    const/16 v21, 0x0

    .line 352
    .line 353
    move-object v13, v15

    .line 354
    move-object v12, v15

    .line 355
    move-object v15, v10

    .line 356
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_a
    new-instance v11, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 363
    .line 364
    const/16 v22, 0xec

    .line 365
    .line 366
    const/16 v23, 0x0

    .line 367
    .line 368
    const/4 v14, 0x2

    .line 369
    const/16 v16, 0x0

    .line 370
    .line 371
    const/16 v17, 0x0

    .line 372
    .line 373
    const/16 v18, 0x4

    .line 374
    .line 375
    const/16 v19, 0x0

    .line 376
    .line 377
    const/16 v20, 0x0

    .line 378
    .line 379
    const/16 v21, 0x0

    .line 380
    .line 381
    move-object v13, v11

    .line 382
    move-object v15, v10

    .line 383
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_b
    const-string v12, "agent"

    .line 391
    .line 392
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    if-eqz v11, :cond_d

    .line 397
    .line 398
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCompletedRegister()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v11

    .line 406
    if-eqz v11, :cond_c

    .line 407
    .line 408
    invoke-static {v8}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    new-instance v12, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 413
    .line 414
    const/16 v22, 0xec

    .line 415
    .line 416
    const/16 v23, 0x0

    .line 417
    .line 418
    const/4 v14, 0x3

    .line 419
    const/16 v16, 0x0

    .line 420
    .line 421
    const/16 v17, 0x0

    .line 422
    .line 423
    const/16 v18, 0x1

    .line 424
    .line 425
    const/16 v19, 0x0

    .line 426
    .line 427
    const/16 v20, 0x0

    .line 428
    .line 429
    const/16 v21, 0x0

    .line 430
    .line 431
    move-object v13, v12

    .line 432
    move-object v15, v10

    .line 433
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    :cond_c
    new-instance v11, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 440
    .line 441
    const/16 v22, 0xec

    .line 442
    .line 443
    const/16 v23, 0x0

    .line 444
    .line 445
    const/4 v14, 0x2

    .line 446
    const/16 v16, 0x0

    .line 447
    .line 448
    const/16 v17, 0x0

    .line 449
    .line 450
    const/16 v18, 0x4

    .line 451
    .line 452
    const/16 v19, 0x0

    .line 453
    .line 454
    const/16 v20, 0x0

    .line 455
    .line 456
    const/16 v21, 0x0

    .line 457
    .line 458
    move-object v13, v11

    .line 459
    move-object v15, v10

    .line 460
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_3

    .line 467
    :cond_d
    new-instance v11, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 468
    .line 469
    const/16 v22, 0xec

    .line 470
    .line 471
    const/16 v23, 0x0

    .line 472
    .line 473
    const/4 v14, 0x2

    .line 474
    const/16 v16, 0x0

    .line 475
    .line 476
    const/16 v17, 0x0

    .line 477
    .line 478
    const/16 v18, 0x4

    .line 479
    .line 480
    const/16 v19, 0x0

    .line 481
    .line 482
    const/16 v20, 0x0

    .line 483
    .line 484
    const/16 v21, 0x0

    .line 485
    .line 486
    move-object v13, v11

    .line 487
    move-object v15, v10

    .line 488
    invoke-direct/range {v13 .. v23}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    :goto_3
    const/16 v12, 0xa

    .line 495
    .line 496
    goto/16 :goto_2

    .line 497
    .line 498
    :cond_e
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 505
    .line 506
    .line 507
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 508
    .line 509
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    const/4 v5, 0x0

    .line 518
    if-lez v4, :cond_f

    .line 519
    .line 520
    new-instance v4, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 521
    .line 522
    iget-object v6, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 523
    .line 524
    sget v7, Lteam/opay/pay/R$string;->transfer_contact_transfer_to_opay_account:I

    .line 525
    .line 526
    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v13

    .line 530
    const/16 v6, 0xc

    .line 531
    .line 532
    invoke-static {v6}, Ljmf;->d(I)I

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    invoke-static {v6}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v17

    .line 540
    const/16 v19, 0xaa

    .line 541
    .line 542
    const/16 v20, 0x0

    .line 543
    .line 544
    const/4 v11, 0x0

    .line 545
    const/4 v12, 0x0

    .line 546
    const/4 v14, 0x0

    .line 547
    const/4 v15, 0x4

    .line 548
    const/16 v16, 0x0

    .line 549
    .line 550
    const/16 v18, 0x0

    .line 551
    .line 552
    move-object v10, v4

    .line 553
    invoke-direct/range {v10 .. v20}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    :cond_f
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 560
    .line 561
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    const/4 v6, 0x7

    .line 570
    if-le v4, v6, :cond_10

    .line 571
    .line 572
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 573
    .line 574
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    .line 583
    .line 584
    .line 585
    new-instance v4, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 586
    .line 587
    const/16 v19, 0xfe

    .line 588
    .line 589
    const/16 v20, 0x0

    .line 590
    .line 591
    const/4 v11, 0x4

    .line 592
    const/4 v12, 0x0

    .line 593
    const/4 v13, 0x0

    .line 594
    const/4 v14, 0x0

    .line 595
    const/4 v15, 0x0

    .line 596
    const/16 v16, 0x0

    .line 597
    .line 598
    const/16 v17, 0x0

    .line 599
    .line 600
    const/16 v18, 0x0

    .line 601
    .line 602
    move-object v10, v4

    .line 603
    invoke-direct/range {v10 .. v20}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 604
    .line 605
    .line 606
    const/16 v5, 0x8

    .line 607
    .line 608
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    goto :goto_4

    .line 612
    :cond_10
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 613
    .line 614
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-nez v4, :cond_11

    .line 623
    .line 624
    iget-object v4, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 625
    .line 626
    invoke-static {v4}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    .line 631
    .line 632
    .line 633
    :cond_11
    :goto_4
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    new-instance v5, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;

    .line 638
    .line 639
    iget-object v6, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 640
    .line 641
    invoke-direct {v5, v6, v2, v9}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;-><init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/concurrent/CopyOnWriteArrayList;Ljr2;)V

    .line 642
    .line 643
    .line 644
    iput v3, v0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->label:I

    .line 645
    .line 646
    invoke-static {v4, v5, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    if-ne v2, v1, :cond_12

    .line 651
    .line 652
    return-object v1

    .line 653
    :cond_12
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 654
    .line 655
    return-object v1
.end method
