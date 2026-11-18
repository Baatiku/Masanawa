.class final Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseReportFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/reports/BaseReportFragment;->P()V
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
    c = "team.opay.sme.store.reports.BaseReportFragment$getBranchs$1"
    f = "BaseReportFragment.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/reports/BaseReportFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/reports/BaseReportFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/reports/BaseReportFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

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
    new-instance p1, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;-><init>(Lteam/opay/sme/store/reports/BaseReportFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->label:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lteam/opay/sme/store/reports/BaseReportFragment;->h0(Z)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lteam/opay/sme/store/api/BranchsReq;

    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/sme/store/reports/BaseReportFragment;->V()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 41
    .line 42
    invoke-virtual {v1}, Lteam/opay/sme/store/reports/BaseReportFragment;->O()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/4 v8, 0x3

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v3, p1

    .line 51
    invoke-direct/range {v3 .. v9}, Lteam/opay/sme/store/api/BranchsReq;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 55
    .line 56
    invoke-virtual {v1}, Lteam/opay/sme/store/reports/BaseReportFragment;->Y()Lteam/opay/sme/store/StoreViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput v2, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->label:I

    .line 61
    .line 62
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->x(Lteam/opay/sme/store/api/BranchsReq;Ljr2;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 70
    .line 71
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 82
    .line 83
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/reports/BaseReportFragment;->h0(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lteam/opay/sme/store/api/BranchsResp;

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchsResp;->e()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lteam/opay/sme/store/api/BranchInfo;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    iget-object v0, p0, Lteam/opay/sme/store/reports/BaseReportFragment$getBranchs$1;->this$0:Lteam/opay/sme/store/reports/BaseReportFragment;

    .line 118
    .line 119
    invoke-static {v0, p1}, Lteam/opay/sme/store/reports/BaseReportFragment;->N(Lteam/opay/sme/store/reports/BaseReportFragment;Lteam/opay/sme/store/api/BranchInfo;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->Y()Lteam/opay/sme/store/StoreViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, p1}, Lteam/opay/sme/store/StoreViewModel;->f0(Lteam/opay/sme/store/api/BranchInfo;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->U()Lteam/opay/sme/store/api/ReportReq;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v1, p1}, Lteam/opay/sme/store/api/ReportReq;->setBranchId(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lteam/opay/sme/store/reports/BaseReportFragment;->c0()V

    .line 141
    .line 142
    .line 143
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
