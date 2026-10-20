.class final Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkSwitchManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->r(Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.core.http.cellularchange.NetworkSwitchManager$detect$2"
    f = "NetworkSwitchManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->k(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 21
    .line 22
    invoke-static {v1, p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->m(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Landroid/net/Network;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 29
    .line 30
    invoke-static {v1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->n(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lok8;->c:Lok8;

    .line 38
    .line 39
    iget-object v2, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 40
    .line 41
    invoke-static {v2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->k(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_1
    iget-object v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 52
    .line 53
    invoke-static {v4}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->n(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "NetworkSwitchManager-> Has WIFI: "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", connected: "

    .line 71
    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x2

    .line 84
    invoke-static {v1, v4, v5, v6, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->o(Z)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_2
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 98
    .line 99
    invoke-static {p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->g(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 106
    .line 107
    invoke-static {v4, p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->m(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Landroid/net/Network;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    :goto_2
    iget-object v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 114
    .line 115
    invoke-static {v4}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->l(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 123
    .line 124
    invoke-static {v4}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->g(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    :cond_4
    iget-object v4, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 132
    .line 133
    invoke-static {v4}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->l(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v8, "NetworkSwitchManager-> Has CELLULAR: "

    .line 143
    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v1, v0, v5, v6, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 166
    .line 167
    invoke-static {p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->k(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;->this$0:Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 174
    .line 175
    invoke-virtual {p1, v3}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->o(Z)V

    .line 176
    .line 177
    .line 178
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1

    .line 181
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 184
    .line 185
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1
.end method
