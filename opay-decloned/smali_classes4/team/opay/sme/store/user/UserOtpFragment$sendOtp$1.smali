.class final Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/UserOtpFragment;->c0()V
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
    c = "team.opay.sme.store.user.UserOtpFragment$sendOtp$1"
    f = "UserOtpFragment.kt"
    l = {
        0x8e
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
            "Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

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
    new-instance p1, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;-><init>(Lteam/opay/sme/store/user/UserOtpFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->label:I

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    const-string v4, "loadingView"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 33
    .line 34
    invoke-static {p1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 39
    .line 40
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lteam/opay/sme/store/api/SignUpSendOtpRequest;

    .line 47
    .line 48
    iget-object v2, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 49
    .line 50
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getPhone()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v2, v5

    .line 62
    :goto_0
    if-nez v2, :cond_3

    .line 63
    .line 64
    move-object v7, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v7, v2

    .line 67
    :goto_1
    const/16 v11, 0xe

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v6, p1

    .line 74
    invoke-direct/range {v6 .. v12}, Lteam/opay/sme/store/api/SignUpSendOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 78
    .line 79
    invoke-static {v2}, Lteam/opay/sme/store/user/UserOtpFragment;->O(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->label:I

    .line 84
    .line 85
    invoke-virtual {v2, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->e0(Lteam/opay/sme/store/api/SignUpSendOtpRequest;Ljr2;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_2
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 93
    .line 94
    iget-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 105
    .line 106
    invoke-static {v1, v2}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_d

    .line 111
    .line 112
    instance-of v1, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 113
    .line 114
    if-eqz v1, :cond_b

    .line 115
    .line 116
    iget-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 117
    .line 118
    invoke-static {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v1, v1, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 123
    .line 124
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lteam/opay/sme/store/api/SignUpSendOtpResponse;

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    invoke-virtual {v1}, Lteam/opay/sme/store/api/SignUpSendOtpResponse;->getSuccessTip()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_5

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move-object v1, v5

    .line 154
    :goto_3
    if-nez v1, :cond_9

    .line 155
    .line 156
    :cond_6
    iget-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 157
    .line 158
    sget v2, Lteam/opay/sme/store/R$string;->sme_store_otp_sent_label:I

    .line 159
    .line 160
    invoke-static {v1}, Lteam/opay/sme/store/user/UserOtpFragment;->M(Lteam/opay/sme/store/user/UserOtpFragment;)Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    if-eqz v4, :cond_7

    .line 165
    .line 166
    invoke-virtual {v4}, Lteam/opay/sme/store/api/CreateEmployeesReq;->getPhone()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    :cond_7
    if-nez v5, :cond_8

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    move-object v3, v5

    .line 174
    :goto_4
    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    aput-object v3, v0, v4

    .line 178
    .line 179
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v0, "getString(...)"

    .line 184
    .line 185
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 189
    .line 190
    invoke-static {v0}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Lgvd;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    invoke-static {v1}, Lwie;->D(Ljava/lang/String;)Landroid/text/Spanned;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 204
    .line 205
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lteam/opay/sme/store/api/SignUpSendOtpResponse;

    .line 210
    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    invoke-virtual {p1}, Lteam/opay/sme/store/api/SignUpSendOtpResponse;->getCountdown()Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 220
    .line 221
    .line 222
    move-result-wide v1

    .line 223
    goto :goto_5

    .line 224
    :cond_a
    const-wide/16 v1, 0x3c

    .line 225
    .line 226
    :goto_5
    invoke-static {v0, v1, v2}, Lteam/opay/sme/store/user/UserOtpFragment;->P(Lteam/opay/sme/store/user/UserOtpFragment;J)V

    .line 227
    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_b
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 231
    .line 232
    invoke-static {v0}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v0, v0, Lgvd;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 237
    .line 238
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$sendOtp$1;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 245
    .line 246
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_c

    .line 255
    .line 256
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :cond_c
    invoke-static {v0, v5}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 264
    .line 265
    return-object p1
.end method
