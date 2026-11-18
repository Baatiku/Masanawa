.class final Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/EmployeeDetailFragment;->s0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.user.EmployeeDetailFragment$memberDelete$1"
    f = "EmployeeDetailFragment.kt"
    l = {
        0x196
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $payPin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->$payPin:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;-><init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->label:I

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
    goto :goto_1

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
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p1, v1, v3, v2}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lteam/opay/sme/store/api/EmployeeInfoReq;

    .line 41
    .line 42
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 43
    .line 44
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->b0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getMemberId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v5, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v5, v2

    .line 57
    :goto_0
    iget-object v7, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->$payPin:Ljava/lang/String;

    .line 58
    .line 59
    const/16 v9, 0xa

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v4, p1

    .line 65
    invoke-direct/range {v4 .. v10}, Lteam/opay/sme/store/api/EmployeeInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 69
    .line 70
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->c0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput v3, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->label:I

    .line 75
    .line 76
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->V(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 84
    .line 85
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 108
    .line 109
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 119
    .line 120
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->g0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 125
    .line 126
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v0, v0, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 131
    .line 132
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$memberDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 136
    .line 137
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_5
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1
.end method
