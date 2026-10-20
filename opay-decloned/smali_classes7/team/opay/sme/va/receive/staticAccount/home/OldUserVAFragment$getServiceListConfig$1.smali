.class final Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OldUserVAFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->I0()V
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
    c = "team.opay.sme.va.receive.staticAccount.home.OldUserVAFragment$getServiceListConfig$1"
    f = "OldUserVAFragment.kt"
    l = {
        0x194
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->R()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v1, Lteam/opay/sme/va/receive/ListConfigReq;

    .line 35
    .line 36
    invoke-direct {v1, v2, v3, v2}, Lteam/opay/sme/va/receive/ListConfigReq;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    iput v3, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->label:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->y(Lteam/opay/sme/va/receive/ListConfigReq;Ljr2;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 49
    .line 50
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 51
    .line 52
    if-eqz v0, :cond_e

    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 55
    .line 56
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Lixd;->n:Lteam/opay/core/widget/HttpViewGroup;

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 66
    .line 67
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lixd;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    const-string v1, "serviceCl"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 79
    .line 80
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/ListConfigResp;->getDivList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v1, v2

    .line 94
    :goto_1
    const/4 v4, 0x0

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v1, 0x0

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 107
    :goto_3
    xor-int/2addr v1, v3

    .line 108
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 112
    .line 113
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Lixd;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    const-string v1, "serviceTitle"

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/ListConfigResp;->getDivTitle()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    move-object v1, v2

    .line 138
    :goto_4
    if-eqz v1, :cond_7

    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    :cond_7
    const/4 v4, 0x1

    .line 147
    :cond_8
    xor-int/lit8 v1, v4, 0x1

    .line 148
    .line 149
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 153
    .line 154
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->v0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lteam/opay/sme/va/receive/staticAccount/home/ServiceAdapter;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/ListConfigResp;->getDivList()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    goto :goto_5

    .line 171
    :cond_9
    move-object v1, v2

    .line 172
    :goto_5
    if-nez v1, :cond_a

    .line 173
    .line 174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :cond_a
    invoke-virtual {v0, v1}, Lteam/opay/sme/va/receive/staticAccount/home/ServiceAdapter;->setDataList(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 182
    .line 183
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v0, v0, Lixd;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 194
    .line 195
    if-eqz v1, :cond_b

    .line 196
    .line 197
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/ListConfigResp;->getDivTitle()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    goto :goto_6

    .line 202
    :cond_b
    move-object v1, v2

    .line 203
    :goto_6
    if-nez v1, :cond_c

    .line 204
    .line 205
    const-string v1, ""

    .line 206
    .line 207
    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 211
    .line 212
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-object v0, v0, Lixd;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 217
    .line 218
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 223
    .line 224
    if-eqz v1, :cond_d

    .line 225
    .line 226
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/ListConfigResp;->getTnListShow()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :cond_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lteam/opay/sme/va/receive/ListConfigResp;

    .line 242
    .line 243
    if-eqz p1, :cond_10

    .line 244
    .line 245
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/ListConfigResp;->getTnListShow()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-ne p1, v3, :cond_10

    .line 250
    .line 251
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 252
    .line 253
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->x0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)V

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_e
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 258
    .line 259
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v0, v0, Lixd;->n:Lteam/opay/core/widget/HttpViewGroup;

    .line 264
    .line 265
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getServiceListConfig$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 269
    .line 270
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    if-eqz p1, :cond_f

    .line 279
    .line 280
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    :cond_f
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_10
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 288
    .line 289
    return-object p1
.end method
