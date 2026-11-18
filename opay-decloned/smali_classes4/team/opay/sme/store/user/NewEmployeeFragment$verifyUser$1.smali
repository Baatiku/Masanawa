.class final Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewEmployeeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/NewEmployeeFragment;->d1()V
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
    c = "team.opay.sme.store.user.NewEmployeeFragment$verifyUser$1"
    f = "NewEmployeeFragment.kt"
    l = {
        0x218
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/NewEmployeeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

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
    new-instance p1, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;-><init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    iget v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 34
    .line 35
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, v2, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 49
    .line 50
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v2, Lxud;->c:Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    new-instance v2, Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 64
    .line 65
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 66
    .line 67
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->Z(Lteam/opay/sme/store/user/NewEmployeeFragment;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v6, v5, v4, v5}, Liie;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v4}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v19

    .line 79
    const/16 v20, 0xffe

    .line 80
    .line 81
    const/16 v21, 0x0

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    const/4 v15, 0x0

    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v18, 0x0

    .line 96
    .line 97
    move-object v6, v2

    .line 98
    invoke-direct/range {v6 .. v21}, Lteam/opay/sme/store/api/CreateEmployeesReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/PayrollBankInfo;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    iget-object v6, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 102
    .line 103
    invoke-static {v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->c0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iput v4, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->label:I

    .line 108
    .line 109
    invoke-virtual {v6, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->T(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-ne v2, v1, :cond_4

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_4
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 117
    .line 118
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 129
    .line 130
    invoke-static {v1, v4}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_13

    .line 135
    .line 136
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 137
    .line 138
    const-string v4, ""

    .line 139
    .line 140
    if-eqz v1, :cond_e

    .line 141
    .line 142
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 143
    .line 144
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    iget-object v1, v1, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 158
    .line 159
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 160
    .line 161
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    check-cast v6, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 166
    .line 167
    invoke-static {v1, v6}, Lteam/opay/sme/store/user/NewEmployeeFragment;->f0(Lteam/opay/sme/store/user/NewEmployeeFragment;Lteam/opay/sme/store/api/EmployeeInfo;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 171
    .line 172
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->d0(Lteam/opay/sme/store/user/NewEmployeeFragment;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 176
    .line 177
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->a0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getErrorMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    goto :goto_1

    .line 188
    :cond_6
    move-object v1, v5

    .line 189
    :goto_1
    if-eqz v1, :cond_a

    .line 190
    .line 191
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_7

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 199
    .line 200
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->a0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getErrorMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    goto :goto_2

    .line 211
    :cond_8
    move-object v1, v5

    .line 212
    :goto_2
    if-nez v1, :cond_9

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_9
    move-object v4, v1

    .line 216
    :goto_3
    invoke-static {v4, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    const-string v1, "fromHtml(...)"

    .line 221
    .line 222
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_a
    :goto_4
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 226
    .line 227
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    iget-object v1, v1, Lxud;->h:Lteam/opay/core/widget/TextInputView;

    .line 234
    .line 235
    if-eqz v1, :cond_b

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    :cond_b
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 241
    .line 242
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_d

    .line 247
    .line 248
    iget-object v1, v1, Lxud;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 249
    .line 250
    if-eqz v1, :cond_d

    .line 251
    .line 252
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 257
    .line 258
    if-eqz v2, :cond_c

    .line 259
    .line 260
    invoke-virtual {v2}, Lteam/opay/sme/store/api/EmployeeInfo;->getShowPayroll()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    :cond_c
    invoke-static {v1, v5}, Lg0g;->i(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 269
    .line 270
    .line 271
    :cond_d
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 272
    .line 273
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->U(Lteam/opay/sme/store/user/NewEmployeeFragment;)V

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_e
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 278
    .line 279
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    iget-object v1, v1, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 286
    .line 287
    if-eqz v1, :cond_f

    .line 288
    .line 289
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    :cond_f
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 293
    .line 294
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-eqz v1, :cond_12

    .line 299
    .line 300
    iget-object v1, v1, Lxud;->h:Lteam/opay/core/widget/TextInputView;

    .line 301
    .line 302
    if-eqz v1, :cond_12

    .line 303
    .line 304
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    if-eqz v2, :cond_10

    .line 309
    .line 310
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    :cond_10
    if-nez v5, :cond_11

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_11
    move-object v4, v5

    .line 318
    :goto_5
    invoke-virtual {v1, v4}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    :cond_12
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$verifyUser$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 322
    .line 323
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->U(Lteam/opay/sme/store/user/NewEmployeeFragment;)V

    .line 324
    .line 325
    .line 326
    :cond_13
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 327
    .line 328
    return-object v1
.end method
