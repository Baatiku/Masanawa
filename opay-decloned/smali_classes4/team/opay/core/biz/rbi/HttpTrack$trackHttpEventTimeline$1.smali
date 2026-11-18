.class final Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTrack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/biz/rbi/HttpTrack;->t(Lteam/opay/core/biz/rbi/HttpTrace;)V
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackHttpEventTimeline$1"
    f = "HttpTrack.kt"
    l = {
        0x108,
        0x111,
        0x119,
        0x11d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $event:Lteam/opay/core/biz/rbi/HttpTrace;

.field final synthetic $httpUrl:Lokhttp3/HttpUrl;

.field final synthetic $other:[Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $values:[Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/biz/rbi/HttpTrack;


# direct methods
.method public constructor <init>(Lteam/opay/core/biz/rbi/HttpTrace;Lokhttp3/HttpUrl;[Lkotlin/Pair;[Lkotlin/Pair;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/biz/rbi/HttpTrace;",
            "Lokhttp3/HttpUrl;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/core/biz/rbi/HttpTrack;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$values:[Lkotlin/Pair;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$other:[Lkotlin/Pair;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$values:[Lkotlin/Pair;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$other:[Lkotlin/Pair;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;-><init>(Lteam/opay/core/biz/rbi/HttpTrace;Lokhttp3/HttpUrl;[Lkotlin/Pair;[Lkotlin/Pair;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->label:I

    .line 6
    .line 7
    const-string v2, "telnet-result"

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    const-string v6, "http_trace_event_timeline"

    .line 13
    .line 14
    const/4 v7, 0x4

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eq v1, v5, :cond_3

    .line 18
    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    if-ne v1, v7, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, [Lkotlin/Pair;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$5:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$4:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lkotlin/jvm/internal/SpreadBuilder;

    .line 50
    .line 51
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$3:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v6, v1

    .line 54
    check-cast v6, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Landroid/content/Context;

    .line 59
    .line 60
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Lteam/opay/core/common/spi/a;

    .line 63
    .line 64
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Lkotlin/jvm/internal/SpreadBuilder;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, [Lkotlin/Pair;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_3
    iget-wide v8, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->J$0:J

    .line 83
    .line 84
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Lkotlin/jvm/internal/SpreadBuilder;

    .line 91
    .line 92
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v10, Lkotlin/jvm/internal/SpreadBuilder;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_4
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lc67;->b:Lc67;

    .line 105
    .line 106
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/core/biz/rbi/HttpTrace;->a()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Lc67;->d(Ljava/util/Map;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v8

    .line 116
    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 117
    .line 118
    const/16 v1, 0x9

    .line 119
    .line 120
    invoke-direct {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lkotlin/Pair;

    .line 124
    .line 125
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 126
    .line 127
    invoke-virtual {v10}, Lteam/opay/core/biz/rbi/HttpTrace;->e()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    const-string v11, "tid"

    .line 132
    .line 133
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lkotlin/Pair;

    .line 140
    .line 141
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 142
    .line 143
    invoke-virtual {v10}, Lteam/opay/core/biz/rbi/HttpTrace;->f()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    const-string v11, "tsp"

    .line 148
    .line 149
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Lkotlin/Pair;

    .line 156
    .line 157
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 158
    .line 159
    invoke-virtual {v10}, Lteam/opay/core/biz/rbi/HttpTrace;->c()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    const-string v11, "network_type"

    .line 164
    .line 165
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lkotlin/Pair;

    .line 172
    .line 173
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 174
    .line 175
    invoke-virtual {v10}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    const-string v11, "host"

    .line 180
    .line 181
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    new-instance v1, Lkotlin/Pair;

    .line 188
    .line 189
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 190
    .line 191
    invoke-virtual {v10}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    const-string v11, "path"

    .line 196
    .line 197
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$values:[Lkotlin/Pair;

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$other:[Lkotlin/Pair;

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lkotlin/Pair;

    .line 214
    .line 215
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 216
    .line 217
    invoke-static {v10}, Lteam/opay/core/biz/rbi/HttpTrack;->e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v10}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->y()Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    invoke-static {v10}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    const-string v11, "wifi2cellular"

    .line 230
    .line 231
    invoke-direct {v1, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 238
    .line 239
    iget-object v10, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 240
    .line 241
    invoke-virtual {v10}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 248
    .line 249
    const-string v11, "ip"

    .line 250
    .line 251
    iput-object v11, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 252
    .line 253
    iput-wide v8, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->J$0:J

    .line 254
    .line 255
    iput v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->label:I

    .line 256
    .line 257
    invoke-static {v1, v10, p0}, Lteam/opay/core/biz/rbi/HttpTrack;->d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-ne v1, v0, :cond_5

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_5
    move-object v5, p1

    .line 265
    move-object v10, v5

    .line 266
    move-object p1, v1

    .line 267
    move-object v1, v11

    .line 268
    :goto_0
    new-instance v11, Lkotlin/Pair;

    .line 269
    .line 270
    invoke-direct {v11, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v11}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v10}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    new-array p1, p1, [Lkotlin/Pair;

    .line 281
    .line 282
    invoke-virtual {v10, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, [Lkotlin/Pair;

    .line 287
    .line 288
    sget-object v1, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 289
    .line 290
    invoke-virtual {v1}, Lteam/opay/core/ab/HttpABConfig$Companion;->f()J

    .line 291
    .line 292
    .line 293
    move-result-wide v10

    .line 294
    const-wide/16 v12, 0x3e8

    .line 295
    .line 296
    cmp-long v1, v12, v10

    .line 297
    .line 298
    if-gtz v1, :cond_6

    .line 299
    .line 300
    cmp-long v1, v10, v8

    .line 301
    .line 302
    if-gez v1, :cond_6

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_6
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 306
    .line 307
    invoke-virtual {v1}, Lteam/opay/core/biz/rbi/HttpTrace;->d()Ljava/util/HashMap;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v5, "code"

    .line 312
    .line 313
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    const-string v5, "200"

    .line 318
    .line 319
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_b

    .line 324
    .line 325
    :goto_1
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 326
    .line 327
    invoke-static {v1}, Lteam/opay/core/biz/rbi/HttpTrack;->e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->s()Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    const/4 v5, 0x0

    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 339
    .line 340
    invoke-static {v1}, Lteam/opay/core/biz/rbi/HttpTrack;->e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 345
    .line 346
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 349
    .line 350
    iput v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->label:I

    .line 351
    .line 352
    invoke-virtual {v1, p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->D(Ljr2;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    if-ne v1, v0, :cond_7

    .line 357
    .line 358
    return-object v0

    .line 359
    :cond_7
    move-object v1, p1

    .line 360
    :goto_2
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 361
    .line 362
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    new-instance v5, Lkotlin/jvm/internal/SpreadBuilder;

    .line 367
    .line 368
    invoke-direct {v5, v7}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Lkotlin/Pair;

    .line 375
    .line 376
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 377
    .line 378
    invoke-static {v7}, Lteam/opay/core/biz/rbi/HttpTrack;->e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-virtual {v7}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->B()Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    invoke-static {v7}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    const-string v8, "wifi_connected"

    .line 391
    .line 392
    invoke-direct {v1, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    new-instance v1, Lkotlin/Pair;

    .line 399
    .line 400
    iget-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 401
    .line 402
    invoke-static {v7}, Lteam/opay/core/biz/rbi/HttpTrack;->e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-virtual {v7}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->z()Ljava/lang/Boolean;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    const-string v8, "cellular_connected"

    .line 411
    .line 412
    invoke-direct {v1, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    new-instance v1, Lteam/opay/core/networkstatus/TelnetHelper;

    .line 419
    .line 420
    invoke-direct {v1}, Lteam/opay/core/networkstatus/TelnetHelper;-><init>()V

    .line 421
    .line 422
    .line 423
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 426
    .line 427
    iput-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 428
    .line 429
    iput-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$3:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$4:Ljava/lang/Object;

    .line 432
    .line 433
    iput-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$5:Ljava/lang/Object;

    .line 434
    .line 435
    iput v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->label:I

    .line 436
    .line 437
    invoke-virtual {v1, p0}, Lteam/opay/core/networkstatus/TelnetHelper;->a(Ljr2;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    if-ne v1, v0, :cond_8

    .line 442
    .line 443
    return-object v0

    .line 444
    :cond_8
    move-object v3, p1

    .line 445
    move-object p1, v1

    .line 446
    move-object v1, v4

    .line 447
    move-object v0, v5

    .line 448
    move-object v4, v0

    .line 449
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    new-instance v5, Lkotlin/Pair;

    .line 454
    .line 455
    invoke-direct {v5, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    new-array p1, p1, [Lkotlin/Pair;

    .line 466
    .line 467
    invoke-virtual {v4, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    check-cast p1, [Lkotlin/Pair;

    .line 472
    .line 473
    invoke-virtual {v3, v1, v6, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_5

    .line 477
    .line 478
    :cond_9
    sget-object v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->h:Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;

    .line 479
    .line 480
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;->a()Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$0:Ljava/lang/Object;

    .line 485
    .line 486
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$1:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->L$2:Ljava/lang/Object;

    .line 489
    .line 490
    iput v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;->label:I

    .line 491
    .line 492
    invoke-virtual {v1, p0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->l(Ljr2;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-ne v1, v0, :cond_a

    .line 497
    .line 498
    return-object v0

    .line 499
    :cond_a
    move-object v0, p1

    .line 500
    move-object p1, v1

    .line 501
    :goto_4
    check-cast p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 502
    .line 503
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 504
    .line 505
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    new-instance v4, Lkotlin/jvm/internal/SpreadBuilder;

    .line 510
    .line 511
    const/4 v5, 0x6

    .line 512
    invoke-direct {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Lkotlin/Pair;

    .line 519
    .line 520
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->getHttpResult()Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    const-string v7, "net-check-result"

    .line 525
    .line 526
    invoke-direct {v0, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Lkotlin/Pair;

    .line 533
    .line 534
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->getTelnetResult()Ljava/util/ArrayList;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    new-instance v0, Lkotlin/Pair;

    .line 545
    .line 546
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected()Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    const-string v5, "network_connection"

    .line 555
    .line 556
    invoke-direct {v0, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    new-instance v0, Lkotlin/Pair;

    .line 563
    .line 564
    const-string v2, "cellular-ping-result"

    .line 565
    .line 566
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->getCellularPingResult()Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    new-instance v0, Lkotlin/Pair;

    .line 577
    .line 578
    const-string v2, "proxy"

    .line 579
    .line 580
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->getProxyResult()Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-direct {v0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 591
    .line 592
    .line 593
    move-result p1

    .line 594
    new-array p1, p1, [Lkotlin/Pair;

    .line 595
    .line 596
    invoke-virtual {v4, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    check-cast p1, [Lkotlin/Pair;

    .line 601
    .line 602
    invoke-virtual {v1, v3, v6, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 603
    .line 604
    .line 605
    goto :goto_5

    .line 606
    :cond_b
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 607
    .line 608
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    array-length v2, p1

    .line 613
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    check-cast p1, [Lkotlin/Pair;

    .line 618
    .line 619
    invoke-virtual {v0, v1, v6, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 620
    .line 621
    .line 622
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 623
    .line 624
    return-object p1
.end method
