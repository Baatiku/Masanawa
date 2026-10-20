.class public final Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ReceiveNumsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001d\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001f\u001a\u0004\u0008$\u0010!R+\u0010*\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\'0&0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u001f\u001a\u0004\u0008)\u0010!R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00070+8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010\t\u00a8\u00060"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/opay/team/newhome/reward/RewardsRepository;",
        "rewardsRepository",
        "<init>",
        "(Lcom/opay/team/newhome/reward/RewardsRepository;)V",
        "",
        "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
        "u",
        "()Ljava/util/List;",
        "Lcom/opay/team/newhome/reward/TaskItem;",
        "taskItem",
        "A",
        "(Lcom/opay/team/newhome/reward/TaskItem;)Ljava/util/List;",
        "Lag8;",
        "viewLifecycleOwner",
        "",
        "taskId",
        "Lcom/opay/team/newhome/reward/RewardsNumItem;",
        "rewardsNum",
        "",
        "x",
        "(Lag8;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;)V",
        "rewardsItem",
        "",
        "z",
        "(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z",
        "a",
        "Lcom/opay/team/newhome/reward/RewardsRepository;",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "b",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "w",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "toaskEvent",
        "c",
        "s",
        "receiveLoadingEvent",
        "Lkotlin/Pair;",
        "Lcom/opay/team/newhome/reward/ReceiveRsp;",
        "d",
        "t",
        "receiveSuccessEvent",
        "",
        "e",
        "Ljava/util/List;",
        "getReceiveList",
        "receiveList",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/opay/team/newhome/reward/RewardsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/ReceiveRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/RewardsRepository;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/reward/RewardsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rewardsRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->a:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 10
    .line 11
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 12
    .line 13
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->b:Lteam/opay/pay/util/SingleLiveEvent;

    .line 17
    .line 18
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 19
    .line 20
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->c:Lteam/opay/pay/util/SingleLiveEvent;

    .line 24
    .line 25
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 26
    .line 27
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->d:Lteam/opay/pay/util/SingleLiveEvent;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic q(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->v(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic r(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->y(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    sub-long/2addr v0, p0

    .line 10
    long-to-int p0, v0

    .line 11
    return p0
.end method

.method public static final y(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 16
    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, v3}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->n(Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v3, p1, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->c:Lteam/opay/pay/util/SingleLiveEvent;

    .line 26
    .line 27
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 32
    .line 33
    if-ne v4, v5, :cond_3

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const/4 v4, 0x0

    .line 38
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sget-object v4, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel$a;->a:[I

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    aget v3, v4, v3

    .line 56
    .line 57
    const-string v4, "task_id"

    .line 58
    .line 59
    const-string v5, "receive_status"

    .line 60
    .line 61
    const-string v6, "rewards_native_bulk_claim_pop_click"

    .line 62
    .line 63
    const-string v7, ""

    .line 64
    .line 65
    if-eq v3, v1, :cond_6

    .line 66
    .line 67
    if-eq v3, v0, :cond_4

    .line 68
    .line 69
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    .line 72
    goto/16 :goto_d

    .line 73
    .line 74
    :cond_4
    sget-object p0, Lx7b;->a:Lx7b;

    .line 75
    .line 76
    const-string p3, "error"

    .line 77
    .line 78
    invoke-static {v5, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const-string v3, "code"

    .line 83
    .line 84
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v3, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v4, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const/4 v4, 0x3

    .line 97
    new-array v4, v4, [Lkotlin/Pair;

    .line 98
    .line 99
    aput-object p3, v4, v2

    .line 100
    .line 101
    aput-object v3, v4, v1

    .line 102
    .line 103
    aput-object p2, v4, v0

    .line 104
    .line 105
    invoke-virtual {p0, v6, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p1, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->b:Lteam/opay/pay/util/SingleLiveEvent;

    .line 109
    .line 110
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    move-object v7, p1

    .line 118
    :goto_2
    invoke-virtual {p0, v7}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_d

    .line 122
    .line 123
    :cond_6
    sget-object v3, Lx7b;->a:Lx7b;

    .line 124
    .line 125
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    invoke-virtual {v8}, Lcom/opay/team/newhome/reward/ReceiveRsp;->a()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    move-object v8, v9

    .line 140
    :goto_3
    invoke-static {v5, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v4, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    new-array v4, v0, [Lkotlin/Pair;

    .line 149
    .line 150
    aput-object v5, v4, v2

    .line 151
    .line 152
    aput-object p2, v4, v1

    .line 153
    .line 154
    invoke-virtual {v3, v6, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 155
    .line 156
    .line 157
    if-eqz p0, :cond_9

    .line 158
    .line 159
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 164
    .line 165
    if-eqz p2, :cond_8

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    move-object p2, v9

    .line 173
    :goto_4
    const-string v2, "-1"

    .line 174
    .line 175
    invoke-static {p2, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->o(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    if-eqz p0, :cond_c

    .line 185
    .line 186
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 191
    .line 192
    if-eqz p2, :cond_a

    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->d()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    move-object p2, v9

    .line 200
    :goto_5
    if-nez p2, :cond_b

    .line 201
    .line 202
    move-object p2, v7

    .line 203
    :cond_b
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->p(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_c
    if-eqz p0, :cond_f

    .line 207
    .line 208
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 213
    .line 214
    if-eqz p2, :cond_d

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->c()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    goto :goto_6

    .line 221
    :cond_d
    move-object p2, v9

    .line 222
    :goto_6
    if-nez p2, :cond_e

    .line 223
    .line 224
    move-object p2, v7

    .line 225
    :cond_e
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->q(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 233
    .line 234
    if-eqz p2, :cond_10

    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->a()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    goto :goto_7

    .line 241
    :cond_10
    move-object p2, v9

    .line 242
    :goto_7
    if-eqz p2, :cond_12

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    packed-switch v2, :pswitch_data_0

    .line 249
    .line 250
    .line 251
    :pswitch_0
    goto :goto_9

    .line 252
    :pswitch_1
    const-string v2, "4"

    .line 253
    .line 254
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_12

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :pswitch_2
    const-string v2, "3"

    .line 262
    .line 263
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_11

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :pswitch_3
    const-string v2, "2"

    .line 271
    .line 272
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-nez p2, :cond_11

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :pswitch_4
    const-string v2, "0"

    .line 280
    .line 281
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-nez p2, :cond_11

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_11
    :goto_8
    if-eqz p0, :cond_13

    .line 289
    .line 290
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->l(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_12
    :goto_9
    if-eqz p0, :cond_13

    .line 295
    .line 296
    invoke-virtual {p0, v1}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->l(I)V

    .line 297
    .line 298
    .line 299
    :cond_13
    :goto_a
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 304
    .line 305
    if-eqz p2, :cond_14

    .line 306
    .line 307
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->a()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    goto :goto_b

    .line 312
    :cond_14
    move-object p2, v9

    .line 313
    :goto_b
    const-string v0, "1"

    .line 314
    .line 315
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    if-eqz p2, :cond_17

    .line 320
    .line 321
    if-eqz p0, :cond_17

    .line 322
    .line 323
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    check-cast p2, Lcom/opay/team/newhome/reward/ReceiveRsp;

    .line 328
    .line 329
    if-eqz p2, :cond_15

    .line 330
    .line 331
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/ReceiveRsp;->b()Ljava/util/ArrayList;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    if-eqz p2, :cond_15

    .line 336
    .line 337
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    check-cast p2, Lcom/opay/team/newhome/reward/RewardInfoItem;

    .line 342
    .line 343
    if-eqz p2, :cond_15

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardInfoItem;->getAmount()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    :cond_15
    if-nez v9, :cond_16

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_16
    move-object v7, v9

    .line 353
    :goto_c
    invoke-virtual {p0, v7}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->r(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_17
    if-eqz p0, :cond_18

    .line 357
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v0

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->m(J)V

    .line 363
    .line 364
    .line 365
    :cond_18
    iget-object p0, p1, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->d:Lteam/opay/pay/util/SingleLiveEvent;

    .line 366
    .line 367
    new-instance p1, Lkotlin/Pair;

    .line 368
    .line 369
    sget-object p2, Lnyc;->a:Lnyc;

    .line 370
    .line 371
    invoke-virtual {p2, p3}, Lnyc;->d(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z

    .line 372
    .line 373
    .line 374
    move-result p2

    .line 375
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p3

    .line 383
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :goto_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 390
    .line 391
    return-object p0

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A(Lcom/opay/team/newhome/reward/TaskItem;)Ljava/util/List;
    .locals 18
    .param p1    # Lcom/opay/team/newhome/reward/TaskItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/TaskItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardNoList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v9, v2

    .line 31
    check-cast v9, Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->z(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v3, ""

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getDataAmount()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move-object v3, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v9}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardAmount()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    :goto_1
    new-instance v2, Lcom/opay/team/newhome/reward/receive/ReceiveItem;

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/TaskItem;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskIcon()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/TaskItem;->getTaskTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v8, "+"

    .line 76
    .line 77
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/16 v16, 0x300

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    const-string v10, "-1"

    .line 93
    .line 94
    const-wide/16 v11, 0x0

    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    const/4 v14, 0x0

    .line 98
    const/4 v15, 0x0

    .line 99
    move-object v3, v2

    .line 100
    invoke-direct/range {v3 .. v17}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, v0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 110
    .line 111
    return-object v1
.end method

.method public final s()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->c:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/ReceiveRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->d:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lvdc;

    .line 4
    .line 5
    invoke-direct {v1}, Lvdc;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final w()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->b:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Lag8;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;)V
    .locals 6
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opay/team/newhome/reward/RewardsNumItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "taskId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/opay/team/newhome/reward/ReceiveReq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardNo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    :cond_1
    invoke-direct {v0, p2, v2}, Lcom/opay/team/newhome/reward/ReceiveReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_5

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, v3

    .line 46
    check-cast v4, Lcom/opay/team/newhome/reward/receive/ReceiveItem;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/receive/ReceiveItem;->g()Lcom/opay/team/newhome/reward/RewardsNumItem;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardNo()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v4, v1

    .line 60
    :goto_1
    if-eqz p3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardNo()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move-object v5, v1

    .line 68
    :goto_2
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move-object v1, v3

    .line 75
    :cond_5
    check-cast v1, Lcom/opay/team/newhome/reward/receive/ReceiveItem;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;->a:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/opay/team/newhome/reward/RewardsRepository;->h(Lcom/opay/team/newhome/reward/ReceiveReq;)Landroidx/lifecycle/LiveData;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Ludc;

    .line 84
    .line 85
    invoke-direct {v2, v1, p0, p2, p3}, Ludc;-><init>(Lcom/opay/team/newhome/reward/receive/ReceiveItem;Lcom/opay/team/newhome/reward/receive/ReceiveNumsViewModel;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, p1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final z(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardType()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardSubType()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    :goto_1
    return p1
.end method
