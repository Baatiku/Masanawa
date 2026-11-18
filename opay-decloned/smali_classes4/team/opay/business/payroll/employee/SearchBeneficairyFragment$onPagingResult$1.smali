.class final Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchBeneficairyFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->d0(Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.payroll.employee.SearchBeneficairyFragment$onPagingResult$1"
    f = "SearchBeneficairyFragment.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;",
            "Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

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

.method public static synthetic c(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lykb;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->R(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lykb;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lykb;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 50
    .line 51
    .line 52
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
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
    new-instance p1, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->label:I

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
    goto/16 :goto_0

    .line 16
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
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_9

    .line 43
    .line 44
    iget-object p1, p1, Lykb;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 45
    .line 46
    if-eqz p1, :cond_9

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 62
    .line 63
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p1, Lykb;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 74
    .line 75
    invoke-static {v0}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->R(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 83
    .line 84
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_9

    .line 89
    .line 90
    iget-object p1, p1, Lykb;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 91
    .line 92
    if-eqz p1, :cond_9

    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 95
    .line 96
    sget v1, Lteam/opay/business/payroll/R$string;->payroll_search_beneficiary_empty:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->p(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 115
    .line 116
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    iget-object p1, p1, Lykb;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 127
    .line 128
    invoke-static {v0}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->R(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 136
    .line 137
    invoke-static {p1}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->Q(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)Lykb;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    iget-object p1, p1, Lykb;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 144
    .line 145
    if-eqz p1, :cond_9

    .line 146
    .line 147
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 148
    .line 149
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    invoke-virtual {v0}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-nez v0, :cond_7

    .line 160
    .line 161
    :cond_6
    iget-object v0, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 162
    .line 163
    sget v1, Lteam/opay/business/payroll/R$string;->payroll_search_beneficiary_empty:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "getString(...)"

    .line 170
    .line 171
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->p(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_8
    iget-object p1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;

    .line 179
    .line 180
    iget-object v1, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 181
    .line 182
    new-instance v3, Lteam/opay/business/payroll/employee/b;

    .line 183
    .line 184
    invoke-direct {v3, v1, p1}, Lteam/opay/business/payroll/employee/b;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;)V

    .line 185
    .line 186
    .line 187
    iput v2, p0, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment$onPagingResult$1;->label:I

    .line 188
    .line 189
    invoke-static {p1, v3, p0}, Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;->S(Lteam/opay/business/payroll/employee/SearchBeneficairyFragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-ne p1, v0, :cond_9

    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_9
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    return-object p1
.end method
