.class final Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FinanceViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.viewmodel.FinanceViewModel$requestNewFinanceData$1$1"
    f = "FinanceViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultFile:Ljava/lang/String;

.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $newHomeServiceReq:Lcom/opay/team/newhome/bean/NewHomeServiceReq;

.field final synthetic $noCache:Z

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lcom/opay/team/newhome/bean/NewHomeServiceReq;Ljava/lang/String;Lag8;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
            "Lcom/opay/team/newhome/bean/NewHomeServiceReq;",
            "Ljava/lang/String;",
            "Lag8;",
            "Z",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$newHomeServiceReq:Lcom/opay/team/newhome/bean/NewHomeServiceReq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$defaultFile:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$noCache:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->invokeSuspend$lambda$3(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$3(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->h()Lteam/opay/odialog/net/AdDataItem;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->w(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lteam/opay/odialog/net/AdDataItem;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->z(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/odialog/net/AdDataItem;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->i()Lteam/opay/odialog/net/AdDataItem;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v0, v1

    .line 58
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->x(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lteam/opay/odialog/net/AdDataItem;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->A(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/odialog/net/AdDataItem;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->a0()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v3, v2

    .line 121
    check-cast v3, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move-object v3, v1

    .line 135
    :goto_2
    const-string v4, "Loan"

    .line 136
    .line 137
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    move-object v1, v2

    .line 144
    :cond_6
    check-cast v1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 145
    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 179
    .line 180
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->v(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lcom/opay/team/newhome/bean/FinanceNewData;)V

    .line 181
    .line 182
    .line 183
    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$newHomeServiceReq:Lcom/opay/team/newhome/bean/NewHomeServiceReq;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$defaultFile:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$lifecycleOwner:Lag8;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$noCache:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;-><init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lcom/opay/team/newhome/bean/NewHomeServiceReq;Ljava/lang/String;Lag8;ZLjr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->y(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$newHomeServiceReq:Lcom/opay/team/newhome/bean/NewHomeServiceReq;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/opay/team/home/api/HomeApiService$b;->d(Lcom/opay/team/newhome/bean/NewHomeServiceReq;)Lretrofit2/Call;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-class v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$noCache:Z

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->a0()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->s()Lteam/opay/core/android/arch/RequestBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->s()Lteam/opay/core/android/arch/RequestBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->r()Lteam/opay/core/android/arch/RequestBuilder;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$defaultFile:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->f(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "200"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->$lifecycleOwner:Lag8;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 85
    .line 86
    new-instance v2, Lcom/opay/team/newhome/viewmodel/a;

    .line 87
    .line 88
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/viewmodel/a;-><init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$a;

    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
