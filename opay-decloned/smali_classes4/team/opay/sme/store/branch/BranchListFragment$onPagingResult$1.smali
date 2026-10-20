.class final Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchListFragment;->F0(Lteam/opay/sme/store/api/BranchsResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.sme.store.branch.BranchListFragment$onPagingResult$1"
    f = "BranchListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $resp:Lteam/opay/sme/store/api/BranchsResp;

.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;",
            "Lteam/opay/sme/store/branch/BranchListFragment;",
            "Lteam/opay/sme/store/api/BranchsResp;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->invokeSuspend$lambda$1(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/sme/store/branch/BranchListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->invokeSuspend$lambda$2(Lteam/opay/sme/store/branch/BranchListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lvqe;->a:Lvqe;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Lkotlin/Pair;

    .line 9
    .line 10
    const-string v3, "employer_branch_guide_click"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lvqe;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    sget-object v4, Lud;->a:Lud;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchsResp;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_1

    .line 30
    .line 31
    const-string p0, ""

    .line 32
    .line 33
    :cond_1
    move-object v6, p0

    .line 34
    const/4 v8, 0x4

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static/range {v4 .. v9}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/sme/store/branch/BranchListFragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lrud;->j:Landroidx/recyclerview/widget/RecyclerView;

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
    .locals 3
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
    new-instance p1, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_12

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne p1, v0, :cond_7

    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v2, :cond_7

    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchsResp;->b()Lteam/opay/core/http/BusinessInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, v1

    .line 44
    :goto_0
    invoke-static {p1, v0}, Lteam/opay/sme/store/branch/BranchListFragment;->f0(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/core/http/BusinessInfo;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchsResp;->a()Lteam/opay/core/http/BusinessInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lteam/opay/sme/store/branch/BranchListFragment;->i0(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/core/http/BusinessInfo;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lrud;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 71
    .line 72
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchListFragment;->W(Lteam/opay/sme/store/branch/BranchListFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 80
    .line 81
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->Y(Lteam/opay/sme/store/branch/BranchListFragment;)Lteam/opay/sme/store/branch/BranchInviteAdapter;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchsResp;->d()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move-object v0, v1

    .line 95
    :goto_1
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_3
    invoke-virtual {p1, v0}, Lteam/opay/sme/store/branch/BranchInviteAdapter;->setDataList(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 105
    .line 106
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->W(Lteam/opay/sme/store/branch/BranchListFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 111
    .line 112
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchListFragment;->Y(Lteam/opay/sme/store/branch/BranchListFragment;)Lteam/opay/sme/store/branch/BranchInviteAdapter;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->k(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchsResp;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    move-object p1, v1

    .line 129
    :goto_2
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_5
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 139
    .line 140
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchsResp;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-object v0, v1

    .line 150
    :goto_3
    invoke-static {p1, v0}, Lteam/opay/sme/store/branch/BranchListFragment;->g0(Lteam/opay/sme/store/branch/BranchListFragment;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 154
    .line 155
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object p1, p1, Lrud;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 160
    .line 161
    sget v0, Lteam/opay/sme/store/R$drawable;->sme_store_question:I

    .line 162
    .line 163
    iget-object v4, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 164
    .line 165
    iget-object v5, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/BranchsResp;

    .line 166
    .line 167
    new-instance v6, Lteam/opay/sme/store/branch/a;

    .line 168
    .line 169
    invoke-direct {v6, v4, v5}, Lteam/opay/sme/store/branch/a;-><init>(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchsResp;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0, v6}, Lteam/opay/core/widget/CorpActionBar;->p(ILkotlin/jvm/functions/Function0;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_4
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 176
    .line 177
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 184
    .line 185
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->W(Lteam/opay/sme/store/branch/BranchListFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ConcatAdapter;->getItemCount()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_8

    .line 194
    .line 195
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 196
    .line 197
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object p1, p1, Lrud;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 204
    .line 205
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchListFragment;->X(Lteam/opay/sme/store/branch/BranchListFragment;)Lteam/opay/sme/store/branch/HolderBranchAdapter;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 213
    .line 214
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p1, p1, Lrud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 219
    .line 220
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_a

    .line 224
    .line 225
    :cond_9
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 226
    .line 227
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    const-string v0, "groupGuide"

    .line 232
    .line 233
    if-eqz p1, :cond_c

    .line 234
    .line 235
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 236
    .line 237
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->W(Lteam/opay/sme/store/branch/BranchListFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ConcatAdapter;->getItemCount()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_a

    .line 246
    .line 247
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 248
    .line 249
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object p1, p1, Lrud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 254
    .line 255
    invoke-static {p1, v1, v2, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_a
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 260
    .line 261
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object p1, p1, Lrud;->d:Landroidx/constraintlayout/widget/Group;

    .line 266
    .line 267
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 271
    .line 272
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-ne v0, v2, :cond_b

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_b
    const/4 v2, 0x0

    .line 286
    :goto_5
    invoke-static {p1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 287
    .line 288
    .line 289
    :goto_6
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 290
    .line 291
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object p1, p1, Lrud;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 296
    .line 297
    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_c
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 303
    .line 304
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_f

    .line 309
    .line 310
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 311
    .line 312
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->W(Lteam/opay/sme/store/branch/BranchListFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ConcatAdapter;->getItemCount()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_d

    .line 321
    .line 322
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 323
    .line 324
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    iget-object p1, p1, Lrud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 329
    .line 330
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 331
    .line 332
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 337
    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_d
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 341
    .line 342
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    iget-object p1, p1, Lrud;->d:Landroidx/constraintlayout/widget/Group;

    .line 347
    .line 348
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 352
    .line 353
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_e

    .line 358
    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-ne v0, v2, :cond_e

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_e
    const/4 v2, 0x0

    .line 367
    :goto_7
    invoke-static {p1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 368
    .line 369
    .line 370
    :goto_8
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 371
    .line 372
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    iget-object p1, p1, Lrud;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 377
    .line 378
    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 379
    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_f
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 383
    .line 384
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-ne p1, v2, :cond_10

    .line 389
    .line 390
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 391
    .line 392
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->Z(Lteam/opay/sme/store/branch/BranchListFragment;)Landroid/os/Handler;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 397
    .line 398
    new-instance v4, Lteam/opay/sme/store/branch/b;

    .line 399
    .line 400
    invoke-direct {v4, v1}, Lteam/opay/sme/store/branch/b;-><init>(Lteam/opay/sme/store/branch/BranchListFragment;)V

    .line 401
    .line 402
    .line 403
    const-wide/16 v5, 0x1f4

    .line 404
    .line 405
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    .line 407
    .line 408
    :cond_10
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 409
    .line 410
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    iget-object p1, p1, Lrud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 415
    .line 416
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 420
    .line 421
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Lrud;->d:Landroidx/constraintlayout/widget/Group;

    .line 426
    .line 427
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 431
    .line 432
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    if-eqz v0, :cond_11

    .line 437
    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-ne v0, v2, :cond_11

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :cond_11
    const/4 v2, 0x0

    .line 446
    :goto_9
    invoke-static {p1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 447
    .line 448
    .line 449
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 450
    .line 451
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    iget-object p1, p1, Lrud;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 456
    .line 457
    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 458
    .line 459
    .line 460
    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 461
    .line 462
    return-object p1

    .line 463
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 464
    .line 465
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 466
    .line 467
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1
.end method
