.class final Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchEmployeeManageFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->i0(Lteam/opay/sme/store/api/EmployeesResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.sme.store.branch.employee.BranchEmployeeManageFragment$onPagingResult$1"
    f = "BranchEmployeeManageFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

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

.method public static synthetic c(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Loud;->n:Landroidx/recyclerview/widget/RecyclerView;

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
    new-instance p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_5

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    const-string v1, "loadingView"

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Loud;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v2, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 39
    .line 40
    invoke-static {v2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->T(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/branch/employee/EmployeeManageAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 48
    .line 49
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->T(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/branch/employee/EmployeeManageAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 60
    .line 61
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Loud;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {p1, v2, v0, v2}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 72
    .line 73
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Loud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 78
    .line 79
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 96
    .line 97
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p1, p1, Loud;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 104
    .line 105
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->T(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/branch/employee/EmployeeManageAdapter;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 113
    .line 114
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->T(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/branch/employee/EmployeeManageAdapter;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_2

    .line 123
    .line 124
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 125
    .line 126
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Loud;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 131
    .line 132
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 142
    .line 143
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object p1, p1, Loud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 148
    .line 149
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-ne p1, v0, :cond_4

    .line 163
    .line 164
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 165
    .line 166
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p1, p1, Loud;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 173
    .line 174
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->T(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/branch/employee/EmployeeManageAdapter;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 182
    .line 183
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->S(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Landroid/os/Handler;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 188
    .line 189
    new-instance v2, Lteam/opay/sme/store/branch/employee/d;

    .line 190
    .line 191
    invoke-direct {v2, v0}, Lteam/opay/sme/store/branch/employee/d;-><init>(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)V

    .line 192
    .line 193
    .line 194
    const-wide/16 v3, 0x1f4

    .line 195
    .line 196
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 200
    .line 201
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object p1, p1, Loud;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 206
    .line 207
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 211
    .line 212
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p1, p1, Loud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 217
    .line 218
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 225
    .line 226
    return-object p1

    .line 227
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 230
    .line 231
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1
.end method
