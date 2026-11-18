.class final Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchAddAddressFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchAddAddressFragment;->q0()V
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
    c = "team.opay.sme.store.branch.BranchAddAddressFragment$branchUpdate$1"
    f = "BranchAddAddressFragment.kt"
    l = {
        0x25f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchAddAddressFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchAddAddressFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;-><init>(Lteam/opay/sme/store/branch/BranchAddAddressFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, "httpViewGroup"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lteam/opay/sme/store/api/CreateBranchReq;

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 40
    .line 41
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->i0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 45
    .line 46
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

    .line 51
    .line 52
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 59
    .line 60
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->c0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v2, v5

    .line 72
    :goto_0
    if-nez v2, :cond_3

    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    :cond_3
    move-object v10, v2

    .line 77
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 78
    .line 79
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v2, v2, Liud;->k:Lteam/opay/core/widget/TextInputView;

    .line 84
    .line 85
    invoke-virtual {v2}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 90
    .line 91
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->c0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lteam/opay/sme/store/api/BranchInfo;->getType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    move-object v8, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move-object v8, v5

    .line 104
    :goto_1
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 105
    .line 106
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->d0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/api/BranchSaasInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget-object v6, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 113
    .line 114
    invoke-static {v6}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    iget-object v9, v9, Liud;->j:Lteam/opay/core/widget/TextInputView;

    .line 119
    .line 120
    invoke-virtual {v9}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v2, v9}, Lteam/opay/sme/store/api/BranchSaasInfo;->setBranchAddressDetail(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    iget-object v9, v9, Liud;->l:Lteam/opay/core/widget/TextInputView;

    .line 132
    .line 133
    invoke-virtual {v9}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v2, v9}, Lteam/opay/sme/store/api/BranchSaasInfo;->setBranchAddressLandmark(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v6}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    iget-object v9, v9, Liud;->g:Lteam/opay/core/widget/DropBoxView;

    .line 145
    .line 146
    invoke-virtual {v9}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v2, v9}, Lteam/opay/sme/store/api/BranchSaasInfo;->setBranchAddressLandmarkDirection(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v6}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iget-object v6, v6, Liud;->h:Lteam/opay/core/widget/DropBoxView;

    .line 158
    .line 159
    invoke-virtual {v6}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v2, v6}, Lteam/opay/sme/store/api/BranchSaasInfo;->setBranchAddressLandmarkDistance(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v9, v2

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    move-object v9, v5

    .line 169
    :goto_2
    new-instance v2, Lteam/opay/sme/store/api/CreateBranchReq;

    .line 170
    .line 171
    const/16 v15, 0xf0

    .line 172
    .line 173
    const/16 v16, 0x0

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v14, 0x0

    .line 179
    move-object v6, v2

    .line 180
    invoke-direct/range {v6 .. v16}, Lteam/opay/sme/store/api/CreateBranchReq;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/BranchSaasInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    .line 182
    .line 183
    iget-object v6, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 184
    .line 185
    invoke-static {v6}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->h0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iput-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    iput v3, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->label:I

    .line 192
    .line 193
    invoke-virtual {v6, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->B(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-ne v3, v1, :cond_6

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_6
    move-object v1, v2

    .line 201
    :goto_3
    check-cast v3, Lteam/opay/core/http/HttpResult;

    .line 202
    .line 203
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {v2}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 214
    .line 215
    invoke-static {v2, v6}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_b

    .line 220
    .line 221
    instance-of v2, v3, Lteam/opay/core/http/HttpResult$Success;

    .line 222
    .line 223
    if-eqz v2, :cond_9

    .line 224
    .line 225
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 226
    .line 227
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-object v2, v2, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

    .line 232
    .line 233
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v2}, Lg0g;->d(Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 240
    .line 241
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->c0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_7

    .line 246
    .line 247
    invoke-virtual {v1}, Lteam/opay/sme/store/api/CreateBranchReq;->getAliasName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Lteam/opay/sme/store/api/BranchInfo;->setAliasName(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Lteam/opay/sme/store/api/CreateBranchReq;->getBranchExt()Lteam/opay/sme/store/api/BranchSaasInfo;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v2, v1}, Lteam/opay/sme/store/api/BranchInfo;->setBranchExt(Lteam/opay/sme/store/api/BranchSaasInfo;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 262
    .line 263
    invoke-virtual {v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->u0()Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-eqz v1, :cond_8

    .line 268
    .line 269
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 270
    .line 271
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->c0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_8
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 279
    .line 280
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    sget v2, Lteam/opay/sme/store/R$string;->sme_store_success_saved:I

    .line 285
    .line 286
    invoke-static {v1, v2}, Let;->u(Landroid/content/Context;I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 290
    .line 291
    invoke-virtual {v1}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_9
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 300
    .line 301
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object v1, v1, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

    .line 306
    .line 307
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchUpdate$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 314
    .line 315
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-eqz v2, :cond_a

    .line 324
    .line 325
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    :cond_a
    invoke-static {v1, v5}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_b
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 333
    .line 334
    return-object v1
.end method
