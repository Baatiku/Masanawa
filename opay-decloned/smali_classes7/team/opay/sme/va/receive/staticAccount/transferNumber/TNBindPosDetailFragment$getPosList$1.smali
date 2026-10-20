.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TNBindPosDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->S()V
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
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TNBindPosDetailFragment$getPosList$1"
    f = "TNBindPosDetailFragment.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

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
    iget v2, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->label:I

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
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 32
    .line 33
    invoke-static {v2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->N(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v10, Lteam/opay/sme/va/receive/StaticCodeInfoReq;

    .line 38
    .line 39
    iget-object v4, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 40
    .line 41
    invoke-static {v4}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->M(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v8, 0x5

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v4, v10

    .line 50
    invoke-direct/range {v4 .. v9}, Lteam/opay/sme/va/receive/StaticCodeInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->label:I

    .line 54
    .line 55
    invoke-virtual {v2, v10, v0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->Q(Lteam/opay/sme/va/receive/StaticCodeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-ne v2, v1, :cond_2

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 63
    .line 64
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 65
    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 69
    .line 70
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v1, v1, Lnxd;->l:Lteam/opay/core/widget/HttpViewGroup;

    .line 75
    .line 76
    invoke-virtual {v1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 80
    .line 81
    new-instance v15, Lteam/opay/sme/va/receive/TransferNumberDetails;

    .line 82
    .line 83
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->M(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 88
    .line 89
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lteam/opay/sme/va/receive/BindingResp;

    .line 94
    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    invoke-virtual {v4}, Lteam/opay/sme/va/receive/BindingResp;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    move-object v6, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v6, 0x0

    .line 104
    :goto_1
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lteam/opay/sme/va/receive/BindingResp;

    .line 109
    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v4}, Lteam/opay/sme/va/receive/BindingResp;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    move-object v7, v4

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const/4 v7, 0x0

    .line 119
    :goto_2
    const/16 v16, 0x7f8

    .line 120
    .line 121
    const/16 v17, 0x0

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v14, 0x0

    .line 130
    const/16 v18, 0x0

    .line 131
    .line 132
    move-object v4, v15

    .line 133
    move-object v3, v15

    .line 134
    move-object/from16 v15, v18

    .line 135
    .line 136
    invoke-direct/range {v4 .. v17}, Lteam/opay/sme/va/receive/TransferNumberDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v3}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;Lteam/opay/sme/va/receive/TransferNumberDetails;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 143
    .line 144
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->K(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lteam/opay/sme/va/receive/TransferNumberDetails;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v1, v3}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;Lteam/opay/sme/va/receive/TransferNumberDetails;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 152
    .line 153
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->L(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosAdapter;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lteam/opay/sme/va/receive/BindingResp;

    .line 162
    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    invoke-virtual {v2}, Lteam/opay/sme/va/receive/BindingResp;->a()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    const/4 v3, 0x0

    .line 171
    :goto_3
    if-nez v3, :cond_6

    .line 172
    .line 173
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :cond_6
    invoke-virtual {v1, v3}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosAdapter;->setDataList(Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 181
    .line 182
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->L(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosAdapter;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosAdapter;->getDataList()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const-string v2, "actionConfirm"

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 199
    .line 200
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v1, v1, Lnxd;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 205
    .line 206
    iget-object v3, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 207
    .line 208
    sget v4, Lteam/opay/sme/va/R$string;->sme_va_pos_empty:I

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v1, v3}, Lteam/opay/core/widget/HttpViewGroup;->p(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 218
    .line 219
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v1, v1, Lnxd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 224
    .line 225
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_7
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 233
    .line 234
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v1, v1, Lnxd;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 239
    .line 240
    invoke-virtual {v1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 244
    .line 245
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-object v1, v1, Lnxd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 250
    .line 251
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Lg0g;->h(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_8
    iget-object v1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$getPosList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 259
    .line 260
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;)Lnxd;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v1, v1, Lnxd;->l:Lteam/opay/core/widget/HttpViewGroup;

    .line 265
    .line 266
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-eqz v2, :cond_9

    .line 271
    .line 272
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    goto :goto_4

    .line 277
    :cond_9
    const/4 v3, 0x0

    .line 278
    :goto_4
    invoke-virtual {v1, v3}, Lteam/opay/core/widget/HttpViewGroup;->t(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 282
    .line 283
    return-object v1
.end method
