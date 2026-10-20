.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferNumberListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->e0()V
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
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TransferNumberListFragment$queryAccountNumbers$1"
    f = "TransferNumberListFragment.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->N(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberAdapter;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Lpxd;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 52
    .line 53
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lpxd;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 60
    .line 61
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/HolderTransferNumberAdapter;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 69
    .line 70
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->R(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v1, Lteam/opay/sme/va/receive/QueryTNsReq;

    .line 75
    .line 76
    invoke-direct {v1, v3, v2, v3}, Lteam/opay/sme/va/receive/QueryTNsReq;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->label:I

    .line 80
    .line 81
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->X(Lteam/opay/sme/va/receive/QueryTNsReq;Ljr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_3

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 89
    .line 90
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "<get-lifecycle>(...)"

    .line 97
    .line 98
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 110
    .line 111
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Lpxd;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 118
    .line 119
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->N(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberAdapter;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    .line 125
    .line 126
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 131
    .line 132
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lpxd;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 137
    .line 138
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 139
    .line 140
    .line 141
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 142
    .line 143
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lteam/opay/sme/va/receive/QueryTNsResp;

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/QueryTNsResp;->a()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    move-object p1, v3

    .line 157
    :goto_1
    if-nez p1, :cond_5

    .line 158
    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 170
    .line 171
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 179
    .line 180
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 188
    .line 189
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->N(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberAdapter;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberAdapter;->setDataList(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 198
    .line 199
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Lpxd;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 204
    .line 205
    invoke-static {p1, v3, v2, v3}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$queryAccountNumbers$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 210
    .line 211
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;)Lpxd;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v0, v0, Lpxd;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 216
    .line 217
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 222
    .line 223
    .line 224
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 225
    .line 226
    return-object p1
.end method
