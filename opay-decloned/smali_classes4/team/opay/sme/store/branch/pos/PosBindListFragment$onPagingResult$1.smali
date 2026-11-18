.class final Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PosBindListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/pos/PosBindListFragment;->c0(Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.sme.store.branch.pos.PosBindListFragment$onPagingResult$1"
    f = "PosBindListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/pos/PosBindListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;",
            "Lteam/opay/sme/store/branch/pos/PosBindListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

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

.method public static synthetic c(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lyud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/pos/PosBindListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lyud;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string v1, "<get-lifecycle>(...)"

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->P(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lteam/opay/sme/store/branch/pos/PosBindingAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v2, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Landroidx/paging/PagingData;->e:Landroidx/paging/PagingData$Companion;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/paging/PagingData$Companion;->a()Landroidx/paging/PagingData;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v2, v1}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 68
    .line 69
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lyud;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-static {p1, v1, v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 89
    .line 90
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->P(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lteam/opay/sme/store/branch/pos/PosBindingAdapter;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v1, Landroidx/paging/PagingData;->e:Landroidx/paging/PagingData$Companion;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/paging/PagingData$Companion;->a()Landroidx/paging/PagingData;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v0, v1}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 113
    .line 114
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lyud;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 119
    .line 120
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 121
    .line 122
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-ne p1, v0, :cond_3

    .line 137
    .line 138
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 139
    .line 140
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->Q(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 145
    .line 146
    new-instance v1, Lteam/opay/sme/store/branch/pos/a;

    .line 147
    .line 148
    invoke-direct {v1, v0}, Lteam/opay/sme/store/branch/pos/a;-><init>(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)V

    .line 149
    .line 150
    .line 151
    const-wide/16 v2, 0x1f4

    .line 152
    .line 153
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .line 155
    .line 156
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 157
    .line 158
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p1, p1, Lyud;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 168
    .line 169
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lyud;->b:Lcom/google/android/material/button/MaterialButton;

    .line 174
    .line 175
    const-string v0, "actionAdd"

    .line 176
    .line 177
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 181
    .line 182
    invoke-static {v0}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->T(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v1, "MERCHANT_UNBOUND"

    .line 187
    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-static {p1, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 193
    .line 194
    .line 195
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method
