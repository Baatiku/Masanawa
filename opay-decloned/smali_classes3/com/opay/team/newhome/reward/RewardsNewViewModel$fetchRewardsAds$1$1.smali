.class final Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1$a;
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
    c = "com.opay.team.newhome.reward.RewardsNewViewModel$fetchRewardsAds$1$1"
    f = "RewardsNewViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adType:I

.field final synthetic $call:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewLifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lag8;ILcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;>;",
            "Lag8;",
            "I",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$viewLifecycleOwner:Lag8;

    .line 4
    .line 5
    iput p3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$adType:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

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

.method public static synthetic c(ILcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->invokeSuspend$lambda$6(ILcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->invokeSuspend$lambda$6$lambda$5$lambda$4$lambda$3$lambda$2(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$6(ILcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 12

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_a

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eq p0, v1, :cond_5

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq p0, v1, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq p0, v1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lteam/opay/odialog/net/ADListResponse;

    .line 35
    .line 36
    if-eqz p0, :cond_b

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_b

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_b

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lteam/opay/odialog/net/ADListItem;

    .line 59
    .line 60
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "Rewards_Act_Floating"

    .line 65
    .line 66
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object p2, v0

    .line 86
    :goto_1
    if-eqz p2, :cond_2

    .line 87
    .line 88
    sget-object v1, Llm;->a:Llm;

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v4, Lcom/opay/team/newhome/reward/c;

    .line 99
    .line 100
    invoke-direct {v4, p1, p2}, Lcom/opay/team/newhome/reward/c;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v3, v4}, Llm;->h(Ljava/lang/String;Ljava/lang/String;Lhm6;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Lteam/opay/odialog/net/ADListResponse;

    .line 112
    .line 113
    if-eqz p0, :cond_b

    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-eqz p0, :cond_b

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->Q()Lteam/opay/pay/util/SingleLiveEvent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, p0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_5
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lteam/opay/odialog/net/ADListResponse;

    .line 135
    .line 136
    if-eqz p0, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_6

    .line 143
    .line 144
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lteam/opay/odialog/net/ADListItem;

    .line 149
    .line 150
    if-eqz p0, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    if-eqz p0, :cond_6

    .line 157
    .line 158
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Lteam/opay/odialog/net/AdDataItem;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    move-object p0, v0

    .line 166
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "big sale ad "

    .line 172
    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    if-nez p0, :cond_7

    .line 180
    .line 181
    invoke-static {p1, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->B(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsModule;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->C(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lcom/opay/team/newhome/reward/RewardsModule;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-eqz p2, :cond_8

    .line 197
    .line 198
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 199
    .line 200
    const/16 v10, 0x5f

    .line 201
    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v9, 0x0

    .line 209
    move-object v2, v0

    .line 210
    invoke-direct/range {v2 .. v11}, Lcom/opay/team/newhome/reward/RewardsModuleData;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/CouponData;Lcom/opay/team/newhome/reward/FlashSaleModule;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v0}, Lcom/opay/team/newhome/reward/RewardsModule;->e(Lcom/opay/team/newhome/reward/RewardsModuleData;)V

    .line 214
    .line 215
    .line 216
    :cond_8
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getBackgroundColor()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    if-eqz p0, :cond_9

    .line 221
    .line 222
    invoke-static {p1, p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->A(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->W()Lteam/opay/pay/util/SingleLiveEvent;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lcom/opay/team/newhome/reward/RewardsModule;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p0, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->T()Lteam/opay/pay/util/SingleLiveEvent;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_a
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 247
    .line 248
    .line 249
    :cond_b
    :goto_4
    return-void
.end method

.method private static final invokeSuspend$lambda$6$lambda$5$lambda$4$lambda$3$lambda$2(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->h0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p3, Lnyc;->a:Lnyc;

    .line 6
    .line 7
    invoke-virtual {p3, p1, p2}, Lnyc;->f(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;)Lteam/opay/odialog/net/AdDataItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
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
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$viewLifecycleOwner:Lag8;

    .line 6
    .line 7
    iget v3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$adType:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;ILcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$call:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$viewLifecycleOwner:Lag8;

    .line 14
    .line 15
    iget v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->$adType:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 18
    .line 19
    new-instance v3, Lcom/opay/team/newhome/reward/b;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Lcom/opay/team/newhome/reward/b;-><init>(ILcom/opay/team/newhome/reward/RewardsNewViewModel;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
