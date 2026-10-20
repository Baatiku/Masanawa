.class public final Lteam/opay/core/networkstatus/TelnetHelper;
.super Ljava/lang/Object;
.source "TelnetHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0086@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/TelnetHelper;",
        "",
        "<init>",
        "()V",
        "",
        "Lteam/opay/core/networkstatus/result/TelnetResult;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "network-status-ping_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljr2;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lteam/opay/core/networkstatus/TelnetHelper$check$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lteam/opay/core/networkstatus/TelnetHelper$check$1;-><init>(Lteam/opay/core/networkstatus/TelnetHelper;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->label:I

    .line 32
    .line 33
    const/16 v3, 0x50

    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-eq v2, v6, :cond_2

    .line 42
    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "https://www.google.com"

    .line 69
    .line 70
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v2, Lteam/opay/core/networkstatus/task/TelnetTask;

    .line 79
    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    move-object p1, v4

    .line 83
    :cond_4
    invoke-direct {v2, p1, v3}, Lteam/opay/core/networkstatus/task/TelnetTask;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iput v6, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->label:I

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lteam/opay/core/networkstatus/task/TelnetTask;->a(Ljr2;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v1, :cond_5

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_5
    :goto_1
    check-cast p1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 96
    .line 97
    const-string v2, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 98
    .line 99
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v7, Lteam/opay/core/networkstatus/task/TelnetTask;

    .line 108
    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    move-object v4, v2

    .line 113
    :goto_2
    invoke-direct {v7, v4, v3}, Lteam/opay/core/networkstatus/task/TelnetTask;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    iput-object p1, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput v5, v0, Lteam/opay/core/networkstatus/TelnetHelper$check$1;->label:I

    .line 119
    .line 120
    invoke-virtual {v7, v0}, Lteam/opay/core/networkstatus/task/TelnetTask;->a(Ljr2;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v1, :cond_7

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_7
    move-object v8, v0

    .line 128
    move-object v0, p1

    .line 129
    move-object p1, v8

    .line 130
    :goto_3
    check-cast p1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 131
    .line 132
    new-array v1, v5, [Lteam/opay/core/networkstatus/result/TelnetResult;

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    aput-object v0, v1, v2

    .line 140
    .line 141
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    aput-object p1, v1, v6

    .line 146
    .line 147
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1
.end method
