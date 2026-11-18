.class final Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TopOrBottomPopViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->v0(Lag8;Lcom/opay/team/newhome/home/MarketingAggregateReq;)V
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
    c = "com.opay.team.newhome.home.TopOrBottomPopViewModel$homePopTrue$1"
    f = "TopOrBottomPopViewModel.kt"
    l = {
        0xd1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $req:Lcom/opay/team/newhome/home/MarketingAggregateReq;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/MarketingAggregateReq;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
            "Lcom/opay/team/newhome/home/MarketingAggregateReq;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$req:Lcom/opay/team/newhome/home/MarketingAggregateReq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$lifecycleOwner:Lag8;

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

.method public static synthetic c(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->invokeSuspend$lambda$5(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$5(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->d(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_9

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_9

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->a()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lteam/opay/odialog/net/AdDataItem;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Lteam/opay/odialog/net/AdDataItem;->setAdpCode(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object v2, v1

    .line 72
    :goto_0
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->N0(Lteam/opay/odialog/net/AdDataItem;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->O0(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move-object v0, v1

    .line 100
    :goto_1
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/FloatingWidget;->h()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    cmp-long v0, v2, v4

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->L0(Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->c()Lcom/opay/team/newhome/home/ForceMessageData;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_5
    if-eqz v1, :cond_9

    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->c()Lcom/opay/team/newhome/home/ForceMessageData;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/ForceMessageData;->c()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_6

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_6
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/ForceMessageData;->a()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_7

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/ForceMessageData;->b()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_8

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    invoke-static {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->S(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->M0(Lcom/opay/team/newhome/home/ForceMessageData;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_2
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->c(Lteam/opay/core/android/arch/Resource;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_a

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 4
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
    new-instance v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$req:Lcom/opay/team/newhome/home/MarketingAggregateReq;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/MarketingAggregateReq;Lag8;Ljr2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->label:I

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
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lzr2;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

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
    iget-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->O(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->label:I

    .line 44
    .line 45
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    move-object v0, p1

    .line 53
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    new-instance p1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v0, "200"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->N(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)Ltd8;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$req:Lcom/opay/team/newhome/home/MarketingAggregateReq;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Ltd8;->v(Lcom/opay/team/newhome/home/MarketingAggregateReq;)Lretrofit2/Call;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->$lifecycleOwner:Lag8;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 115
    .line 116
    new-instance v2, Lcom/opay/team/newhome/home/c;

    .line 117
    .line 118
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/c;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p1
.end method
