.class final Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdpApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;
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
    c = "team.opay.business.provider.active.AdpApi$adReachFeedback$1"
    f = "AdpApi.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adItem:Lteam/opay/business/provider/active/AdItem;

.field final synthetic $adpCode:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/provider/active/AdpApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/provider/active/AdItem;",
            "Lteam/opay/business/provider/active/AdpApi;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

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
    new-instance p1, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->label:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    if-ne v3, v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getDisplayed()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getCallbackShow()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    new-instance p1, Lteam/opay/business/provider/active/AdReachRequest;

    .line 54
    .line 55
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v5, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 58
    .line 59
    invoke-virtual {v5}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-direct {p1, v3, v5}, Lteam/opay/business/provider/active/AdReachRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 75
    .line 76
    invoke-virtual {v3}, Lteam/opay/business/provider/active/AdpApi;->E()Luv;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput v0, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->label:I

    .line 85
    .line 86
    invoke-interface {v3, p1, p0}, Luv;->w(Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v2, :cond_3

    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_3
    :goto_0
    sget-object p1, Lhk8;->c:Lhk8;

    .line 94
    .line 95
    iget-object v2, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 98
    .line 99
    invoke-virtual {v3}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "adReachFeedback adp_show adpCode:"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, "  adId:"

    .line 117
    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {p1, v2, v4, v1, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object p1, Lyqe;->a:Lyqe;

    .line 132
    .line 133
    iget-object v2, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 134
    .line 135
    invoke-static {v2}, Lteam/opay/business/provider/active/AdpApi;->u(Lteam/opay/business/provider/active/AdpApi;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v3, "adpCode"

    .line 140
    .line 141
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adpCode:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 148
    .line 149
    invoke-virtual {v4}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v5, "adId"

    .line 158
    .line 159
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-object v5, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 164
    .line 165
    invoke-virtual {v5}, Lteam/opay/business/provider/active/AdItem;->getAdText()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-string v6, "adText"

    .line 170
    .line 171
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const/4 v6, 0x3

    .line 176
    new-array v6, v6, [Lkotlin/Pair;

    .line 177
    .line 178
    const/4 v7, 0x0

    .line 179
    aput-object v3, v6, v7

    .line 180
    .line 181
    aput-object v4, v6, v0

    .line 182
    .line 183
    aput-object v5, v6, v1

    .line 184
    .line 185
    const-string v1, "adp_show"

    .line 186
    .line 187
    invoke-virtual {p1, v2, v1, v6}, Lyqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lteam/opay/business/provider/active/AdItem;->setDisplayed(Z)V

    .line 193
    .line 194
    .line 195
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_5
    :goto_1
    sget-object p1, Lhk8;->c:Lhk8;

    .line 199
    .line 200
    const-string v0, "adpCode and adItem must not be null"

    .line 201
    .line 202
    invoke-static {p1, v0, v4, v1, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p1
.end method
