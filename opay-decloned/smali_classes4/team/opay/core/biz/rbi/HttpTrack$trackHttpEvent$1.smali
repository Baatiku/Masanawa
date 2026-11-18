.class final Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTrack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/biz/rbi/HttpTrack;->s(Lteam/opay/core/biz/rbi/HttpTrace;)V
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
    c = "team.opay.core.biz.rbi.HttpTrack$trackHttpEvent$1"
    f = "HttpTrack.kt"
    l = {
        0xec
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
            "Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$values:[Lkotlin/Pair;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$other:[Lkotlin/Pair;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

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
    new-instance p1, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$values:[Lkotlin/Pair;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$other:[Lkotlin/Pair;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;-><init>(Lteam/opay/core/biz/rbi/HttpTrace;Lokhttp3/HttpUrl;[Lkotlin/Pair;[Lkotlin/Pair;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->label:I

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
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$5:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$4:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$3:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$2:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Landroid/content/Context;

    .line 27
    .line 28
    iget-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Lteam/opay/core/common/spi/a;

    .line 31
    .line 32
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Lkotlin/jvm/internal/SpreadBuilder;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 53
    .line 54
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 59
    .line 60
    const/16 p1, 0x8

    .line 61
    .line 62
    invoke-direct {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lkotlin/Pair;

    .line 66
    .line 67
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 68
    .line 69
    invoke-virtual {v5}, Lteam/opay/core/biz/rbi/HttpTrace;->e()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "tid"

    .line 74
    .line 75
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lkotlin/Pair;

    .line 82
    .line 83
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 84
    .line 85
    invoke-virtual {v5}, Lteam/opay/core/biz/rbi/HttpTrace;->f()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "tsp"

    .line 90
    .line 91
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lkotlin/Pair;

    .line 98
    .line 99
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$event:Lteam/opay/core/biz/rbi/HttpTrace;

    .line 100
    .line 101
    invoke-virtual {v5}, Lteam/opay/core/biz/rbi/HttpTrace;->c()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "network_type"

    .line 106
    .line 107
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lkotlin/Pair;

    .line 114
    .line 115
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 116
    .line 117
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const-string v6, "host"

    .line 122
    .line 123
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lkotlin/Pair;

    .line 130
    .line 131
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 132
    .line 133
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    const-string v6, "path"

    .line 138
    .line 139
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$values:[Lkotlin/Pair;

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$other:[Lkotlin/Pair;

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->this$0:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 156
    .line 157
    iget-object v5, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->$httpUrl:Lokhttp3/HttpUrl;

    .line 158
    .line 159
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iput-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v4, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$1:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v3, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$2:Ljava/lang/Object;

    .line 168
    .line 169
    const-string v6, "http_trace_event"

    .line 170
    .line 171
    iput-object v6, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$3:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v1, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$4:Ljava/lang/Object;

    .line 174
    .line 175
    const-string v7, "ip"

    .line 176
    .line 177
    iput-object v7, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->L$5:Ljava/lang/Object;

    .line 178
    .line 179
    iput v2, p0, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;->label:I

    .line 180
    .line 181
    invoke-static {p1, v5, p0}, Lteam/opay/core/biz/rbi/HttpTrack;->d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-ne p1, v0, :cond_2

    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_2
    move-object v5, v1

    .line 189
    move-object v2, v6

    .line 190
    move-object v0, v7

    .line 191
    :goto_0
    new-instance v6, Lkotlin/Pair;

    .line 192
    .line 193
    invoke-direct {v6, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v6}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    new-array p1, p1, [Lkotlin/Pair;

    .line 204
    .line 205
    invoke-virtual {v5, p1}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, [Lkotlin/Pair;

    .line 210
    .line 211
    invoke-virtual {v4, v3, v2, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 212
    .line 213
    .line 214
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p1
.end method
