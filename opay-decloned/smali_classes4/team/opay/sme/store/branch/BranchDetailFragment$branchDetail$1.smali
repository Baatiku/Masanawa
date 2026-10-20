.class final Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchDetailFragment;->j0()V
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
    c = "team.opay.sme.store.branch.BranchDetailFragment$branchDetail$1"
    f = "BranchDetailFragment.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchDetailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchDetailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;-><init>(Lteam/opay/sme/store/branch/BranchDetailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->label:I

    .line 6
    .line 7
    const-string v2, "getRoot(...)"

    .line 8
    .line 9
    const-string v3, "layoutContent"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lmud;->h:Landroidx/core/widget/NestedScrollView;

    .line 38
    .line 39
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static {p1, v5, v4, v1}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lmud;->f:Lhvd;

    .line 69
    .line 70
    invoke-virtual {p1}, Lhvd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    new-instance p1, Lteam/opay/sme/store/api/BranchDetailReq;

    .line 81
    .line 82
    iget-object v5, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 83
    .line 84
    invoke-static {v5}, Lteam/opay/sme/store/branch/BranchDetailFragment;->c0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    invoke-virtual {v5}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_3
    move-object v6, v1

    .line 95
    const/16 v12, 0x20

    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v7, 0x1

    .line 99
    const/4 v8, 0x1

    .line 100
    const/4 v9, 0x1

    .line 101
    const/4 v10, 0x1

    .line 102
    const/4 v11, 0x0

    .line 103
    move-object v5, p1

    .line 104
    invoke-direct/range {v5 .. v13}, Lteam/opay/sme/store/api/BranchDetailReq;-><init>(Ljava/lang/String;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 108
    .line 109
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->d0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput v4, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->label:I

    .line 114
    .line 115
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->u(Lteam/opay/sme/store/api/BranchDetailReq;Ljr2;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_4

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 123
    .line 124
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 135
    .line 136
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 147
    .line 148
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v0, v0, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 153
    .line 154
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 158
    .line 159
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lmud;->h:Landroidx/core/widget/NestedScrollView;

    .line 164
    .line 165
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 172
    .line 173
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v0, v0, Lmud;->f:Lhvd;

    .line 178
    .line 179
    invoke-virtual {v0}, Lhvd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 190
    .line 191
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lteam/opay/sme/store/api/BranchDetailResp;

    .line 196
    .line 197
    if-eqz p1, :cond_7

    .line 198
    .line 199
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 200
    .line 201
    invoke-static {v0, p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->h0(Lteam/opay/sme/store/branch/BranchDetailFragment;Lteam/opay/sme/store/api/BranchDetailResp;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_5
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 206
    .line 207
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v0, v0, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 212
    .line 213
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 217
    .line 218
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v0, v0, Lmud;->h:Landroidx/core/widget/NestedScrollView;

    .line 223
    .line 224
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_6

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 235
    .line 236
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v0, v0, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 241
    .line 242
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 247
    .line 248
    .line 249
    :goto_2
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 250
    .line 251
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iget-object p1, p1, Lmud;->f:Lhvd;

    .line 256
    .line 257
    invoke-virtual {p1}, Lhvd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 268
    .line 269
    return-object p1
.end method
