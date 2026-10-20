.class final Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/UserOtpFragment;->R()V
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
    c = "team.opay.sme.store.user.UserOtpFragment$createEmployee$1"
    f = "UserOtpFragment.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/UserOtpFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/UserOtpFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/UserOtpFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

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
    new-instance p1, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;-><init>(Lteam/opay/sme/store/user/UserOtpFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->label:I

    .line 8
    .line 9
    const-string v3, "loadingView"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 36
    .line 37
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 50
    .line 51
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getPhone()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v7, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v7, v5

    .line 64
    :goto_0
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 65
    .line 66
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getFullName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object/from16 v17, v2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object/from16 v17, v5

    .line 80
    .line 81
    :goto_1
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 82
    .line 83
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getEmail()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v14, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object v14, v5

    .line 96
    :goto_2
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 97
    .line 98
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getPayrollBankcard()Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object/from16 v18, v2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move-object/from16 v18, v5

    .line 112
    .line 113
    :goto_3
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 114
    .line 115
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->L(Lteam/opay/sme/store/user/UserOtpFragment;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    iget-object v2, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 120
    .line 121
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getBranchId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    move-object v8, v2

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move-object v8, v5

    .line 134
    :goto_4
    new-instance v2, Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 135
    .line 136
    const/16 v20, 0x127c

    .line 137
    .line 138
    const/16 v21, 0x0

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    move-object v6, v2

    .line 150
    invoke-direct/range {v6 .. v21}, Lteam/opay/sme/store/api/CreateEmployeesReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/PayrollBankInfo;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    .line 152
    .line 153
    iget-object v6, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 154
    .line 155
    invoke-static {v6}, Lteam/opay/sme/store/user/UserOtpFragment;->O(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iput v4, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->label:I

    .line 160
    .line 161
    invoke-virtual {v6, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->U(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-ne v2, v1, :cond_7

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_7
    :goto_5
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 169
    .line 170
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 181
    .line 182
    invoke-static {v1, v6}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 193
    .line 194
    invoke-static {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v1, v1, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 199
    .line 200
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 207
    .line 208
    invoke-virtual {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->V()Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_8

    .line 213
    .line 214
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 215
    .line 216
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 224
    .line 225
    invoke-virtual {v1}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_9
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 234
    .line 235
    invoke-static {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v1, v1, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 240
    .line 241
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 248
    .line 249
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    if-eqz v2, :cond_a

    .line 254
    .line 255
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    goto :goto_6

    .line 260
    :cond_a
    move-object v2, v5

    .line 261
    :goto_6
    if-nez v2, :cond_b

    .line 262
    .line 263
    const-string v2, ""

    .line 264
    .line 265
    :cond_b
    const/4 v3, 0x0

    .line 266
    invoke-static {v1, v3, v2, v4, v5}, Lteam/opay/sme/store/user/UserOtpFragment;->T(Lteam/opay/sme/store/user/UserOtpFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lteam/opay/sme/store/user/UserOtpFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 270
    .line 271
    invoke-static {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v1, v1, Lgvd;->d:Lteam/opay/core/widget/FixCodeInputField;

    .line 276
    .line 277
    invoke-virtual {v1, v4}, Lteam/opay/core/widget/FixCodeInputField;->setErrorBackground(Z)V

    .line 278
    .line 279
    .line 280
    :cond_c
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 281
    .line 282
    return-object v1
.end method
