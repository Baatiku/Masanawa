.class final Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LargeTransfersListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->h0()V
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
    c = "team.opay.sme.va.receive.staticAccount.largeTransfer.LargeTransfersListFragment$loadFilter$1"
    f = "LargeTransfersListFragment.kt"
    l = {
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->label:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->W(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->label:I

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->W(Ljr2;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$loadFilter$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;

    .line 43
    .line 44
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 45
    .line 46
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lcxd;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lcxd;->f:Landroidx/constraintlayout/widget/Group;

    .line 51
    .line 52
    const-string v3, "groupHolderFilter"

    .line 53
    .line 54
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->R(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->R(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/util/List;

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->R(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x0

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v5, v3

    .line 106
    check-cast v5, Lteam/opay/business/transfer/flow/api/CategoryInfo;

    .line 107
    .line 108
    invoke-virtual {v5}, Lteam/opay/business/transfer/flow/api/CategoryInfo;->getSelect()Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object v3, v4

    .line 124
    :goto_1
    check-cast v3, Lteam/opay/business/transfer/flow/api/CategoryInfo;

    .line 125
    .line 126
    invoke-static {v0, v3}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->Z(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;Lteam/opay/business/transfer/flow/api/CategoryInfo;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lcxd;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v1, v1, Lcxd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->V(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lteam/opay/business/transfer/flow/api/CategoryInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/CategoryInfo;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    move-object v3, v4

    .line 147
    :goto_2
    if-nez v3, :cond_7

    .line 148
    .line 149
    const-string v3, ""

    .line 150
    .line 151
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->U(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lteam/opay/sme/va/api/LargeTransfersRequest;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->V(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lteam/opay/business/transfer/flow/api/CategoryInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_8

    .line 163
    .line 164
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/CategoryInfo;->getCode()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    goto :goto_3

    .line 169
    :cond_8
    move-object v3, v4

    .line 170
    :goto_3
    invoke-virtual {v1, v3}, Lteam/opay/sme/va/api/LargeTransfersRequest;->h(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Lcxd;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v1, v1, Lcxd;->e:Landroidx/constraintlayout/widget/Group;

    .line 178
    .line 179
    const-string v3, "filterGroup"

    .line 180
    .line 181
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->R(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;)Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    xor-int/2addr v2, v3

    .line 193
    invoke-static {v1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->isFailure()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_9

    .line 211
    .line 212
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    :cond_9
    invoke-static {v1, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_a
    const/4 p1, 0x0

    .line 220
    invoke-static {v0, p1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->X(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;Z)V

    .line 221
    .line 222
    .line 223
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p1
.end method
