.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1$a;
    }
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$fetchNewPayData$1$1"
    f = "NewPayViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lretrofit2/Call;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            ">;>;",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lag8;",
            "Landroid/content/Context;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$call:Lretrofit2/Call;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$context:Landroid/content/Context;

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

.method public static synthetic c(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->invokeSuspend$lambda$3(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$3(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "access$getTAG$cp(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "getNetData it.status = "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->d(Lteam/opay/core/android/arch/Resource;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->f1(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->v0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v2, v0

    .line 51
    :goto_1
    sget-object v3, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move-object v1, v0

    .line 75
    :goto_3
    if-nez v1, :cond_4

    .line 76
    .line 77
    const/4 v1, -0x1

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    sget-object v2, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1$a;->a:[I

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    aget v1, v2, v1

    .line 86
    .line 87
    :goto_4
    const/4 v2, 0x2

    .line 88
    if-eq v1, v4, :cond_7

    .line 89
    .line 90
    if-eq v1, v2, :cond_6

    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    if-eq v1, v0, :cond_5

    .line 94
    .line 95
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lcom/opay/team/newhome/bean/NewPayData;

    .line 104
    .line 105
    if-eqz p2, :cond_8

    .line 106
    .line 107
    invoke-static {p0, p2, v4, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    sget-object v0, Lcom/opay/team/newhome/home/NewPayFragmentV2;->Companion:Lcom/opay/team/newhome/home/NewPayFragmentV2$Companion;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/NewPayFragmentV2$Companion;->a()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Lcom/opay/team/newhome/bean/NewPayData;

    .line 124
    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Lcom/opay/team/newhome/home/NewPayFragmentV2$Companion;->b(Z)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p2, v4, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_7
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Lcom/opay/team/newhome/bean/NewPayData;

    .line 139
    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 143
    .line 144
    const-string v3, "token_valid_event"

    .line 145
    .line 146
    invoke-static {v1, v3, v5, v2, v0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->P:Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;

    .line 150
    .line 151
    invoke-virtual {v0, v5}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;->b(Z)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lxz6;->a:Lxz6;

    .line 155
    .line 156
    invoke-virtual {v0}, Lxz6;->c()V

    .line 157
    .line 158
    .line 159
    invoke-static {p0, p2, v5, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$call:Lretrofit2/Call;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;-><init>(Lretrofit2/Call;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$call:Lretrofit2/Call;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 14
    .line 15
    const-string v1, "200"

    .line 16
    .line 17
    const-string v2, "newHomePayDefaultLocalData.json"

    .line 18
    .line 19
    const-class v3, Lcom/opay/team/newhome/bean/NewPayData;

    .line 20
    .line 21
    invoke-static {p1, v0, v3, v1, v2}, Lkpc;->c(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$lifecycleOwner:Lag8;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->$context:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v3, Lcom/opay/team/newhome/viewmodel/d;

    .line 32
    .line 33
    invoke-direct {v3, v1, v2}, Lcom/opay/team/newhome/viewmodel/d;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
