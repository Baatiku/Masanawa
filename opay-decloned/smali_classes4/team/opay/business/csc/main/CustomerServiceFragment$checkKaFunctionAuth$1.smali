.class final Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomerServiceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/csc/main/CustomerServiceFragment;->l0(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
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
    c = "team.opay.business.csc.main.CustomerServiceFragment$checkKaFunctionAuth$1"
    f = "CustomerServiceFragment.kt"
    l = {
        0xda
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $serviceCode:Ljava/lang/String;

.field final synthetic $showToast:Z

.field label:I

.field final synthetic this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/csc/main/CustomerServiceFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/csc/main/CustomerServiceFragment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Ljr2<",
            "-",
            "Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$serviceCode:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-boolean p4, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$showToast:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$serviceCode:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$showToast:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;-><init>(Lteam/opay/business/csc/main/CustomerServiceFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLjr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->c0(Lteam/opay/business/csc/main/CustomerServiceFragment;)Lov2;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lov2;->q:Lteam/opay/core/widget/HttpViewGroup;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p1, v1, v2, v3}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->d0(Lteam/opay/business/csc/main/CustomerServiceFragment;)Lteam/opay/business/csc/main/CscViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$serviceCode:Ljava/lang/String;

    .line 47
    .line 48
    iput v2, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->label:I

    .line 49
    .line 50
    invoke-virtual {p1, v1, p0}, Lteam/opay/business/csc/main/CscViewModel;->k(Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "<get-lifecycle>(...)"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lteam/opay/business/provider/account/KaFunctionAuthResponse;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    iget-boolean v1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->$showToast:Z

    .line 95
    .line 96
    iget-object v2, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 97
    .line 98
    sget-object v4, Lgl8;->c:Lgl8;

    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v6, "----------checkFunctionAuthority = "

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x2

    .line 118
    invoke-static {v4, v5, v3, v6, v3}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lteam/opay/business/provider/account/KaFunctionAuthResponse;->a()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v2}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lteam/opay/business/provider/account/KaFunctionAuthResponse;->b()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 146
    .line 147
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :cond_5
    invoke-static {v0, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_1
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$checkKaFunctionAuth$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 165
    .line 166
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->c0(Lteam/opay/business/csc/main/CustomerServiceFragment;)Lov2;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p1, p1, Lov2;->q:Lteam/opay/core/widget/HttpViewGroup;

    .line 171
    .line 172
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 173
    .line 174
    .line 175
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object p1
.end method
