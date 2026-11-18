.class final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.view.TransferContactFragment$sortUser$1$5"
    f = "TransferContactFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/concurrent/CopyOnWriteArrayList;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->$list:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->$list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;-><init>(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljava/util/concurrent/CopyOnWriteArrayList;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->label:I

    .line 7
    .line 8
    if-nez v2, :cond_6

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 14
    .line 15
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->i0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->$list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->i0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 31
    .line 32
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/view/Hilt_TransferContactFragment;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget v3, Lteam/opay/pay/R$layout;->layout_transfer_list_empty:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->m0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    sget-object p1, Lx7b;->a:Lx7b;

    .line 64
    .line 65
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 66
    .line 67
    invoke-static {v2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    const-string v2, "opay_user"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v2, "un_opay_user"

    .line 81
    .line 82
    :goto_0
    const-string v3, "type"

    .line 83
    .line 84
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    new-array v3, v1, [Lkotlin/Pair;

    .line 89
    .line 90
    aput-object v2, v3, v0

    .line 91
    .line 92
    const-string v2, "new_aa_contacts_show"

    .line 93
    .line 94
    invoke-virtual {p1, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 98
    .line 99
    invoke-static {p1, v0}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->o0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;Z)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lmi6;

    .line 109
    .line 110
    iget-object p1, p1, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$sortUser$1$5;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 115
    .line 116
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lmi6;

    .line 124
    .line 125
    iget-object v2, v2, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 126
    .line 127
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetters(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment;->h0(Lteam/opay/pay/transfer/contact/view/TransferContactFragment;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const/16 v4, 0x10

    .line 147
    .line 148
    invoke-static {v4}, Ljmf;->d(I)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    mul-int v4, v4, v2

    .line 153
    .line 154
    const/16 v5, 0x8

    .line 155
    .line 156
    invoke-static {v5}, Ljmf;->d(I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    sub-int/2addr v2, v1

    .line 161
    mul-int v5, v5, v2

    .line 162
    .line 163
    add-int/2addr v4, v5

    .line 164
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-nez v1, :cond_3

    .line 177
    .line 178
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1

    .line 181
    :cond_3
    invoke-static {v1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    sub-int/2addr v0, v1

    .line 186
    const/16 v1, 0x90

    .line 187
    .line 188
    invoke-static {v1}, Ljmf;->d(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sub-int/2addr v0, v1

    .line 193
    if-le v4, v0, :cond_4

    .line 194
    .line 195
    move v4, v0

    .line 196
    :cond_4
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 207
    .line 208
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1
.end method
