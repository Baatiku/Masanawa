.class public final Lteam/opay/opb/transfer/bank/BankRepository$b;
.super Lteam/opay/core/http/arch/NetworkBoundAction;
.source "BankViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/transfer/bank/BankRepository;->h(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundAction<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/business/core/bank/BankInfo;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/business/core/bank/BankInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\"\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001J\'\u0010\u0008\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0010\u0010\n\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/opb/transfer/bank/BankRepository$b",
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "",
        "Lteam/opay/business/core/bank/BankInfo;",
        "Lteam/opay/opb/transfer/bank/bank/BankList;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "Lteam/opay/opb/transfer/bank/bank/BankResponse;",
        "g",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "response",
        "i",
        "(Ljava/util/List;)Ljava/util/List;",
        "business-transfer-bank_release"
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
.field public final synthetic c:Lteam/opay/opb/transfer/bank/BankRepository;

.field public final synthetic d:Lteam/opay/opb/transfer/bank/bank/BankRequest;


# direct methods
.method public constructor <init>(Lteam/opay/opb/transfer/bank/BankRepository;Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/BankRepository$b;->c:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/transfer/bank/BankRepository$b;->d:Lteam/opay/opb/transfer/bank/bank/BankRequest;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundAction;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/transfer/bank/BankRepository$b;->h(Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
    .locals 20

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/opb/transfer/bank/bank/BankResponse;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/opb/transfer/bank/bank/BankResponse;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v4, 0xa

    .line 26
    .line 27
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_5

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lteam/opay/opb/transfer/bank/bank/Bank;

    .line 49
    .line 50
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->g()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v8, ""

    .line 63
    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    move-object v9, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    move-object v9, v5

    .line 69
    :goto_1
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    move-object v10, v8

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    move-object v10, v5

    .line 78
    :goto_2
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->h()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-virtual/range {p0 .. p0}, Lteam/opay/opb/transfer/bank/bank/BankRequest;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->d()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->f()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    move-object/from16 v16, v8

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    move-object/from16 v16, v5

    .line 100
    .line 101
    :goto_3
    invoke-virtual {v4}, Lteam/opay/opb/transfer/bank/bank/Bank;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    move-object v15, v8

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    move-object v15, v4

    .line 110
    :goto_4
    new-instance v4, Lteam/opay/business/core/bank/BankInfo;

    .line 111
    .line 112
    const/16 v17, 0x180

    .line 113
    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    const/4 v14, 0x0

    .line 117
    const/16 v19, 0x0

    .line 118
    .line 119
    move-object v5, v4

    .line 120
    move-object v8, v9

    .line 121
    move-object v9, v10

    .line 122
    move v10, v11

    .line 123
    move-object v11, v12

    .line 124
    move-object v12, v13

    .line 125
    move v13, v14

    .line 126
    move/from16 v14, v19

    .line 127
    .line 128
    invoke-direct/range {v5 .. v18}, Lteam/opay/business/core/bank/BankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    move-object v3, v1

    .line 136
    :cond_5
    invoke-virtual {v0}, Lteam/opay/opb/transfer/bank/bank/BankResponse;->b()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lteam/opay/opb/transfer/bank/bank/Bank;

    .line 157
    .line 158
    if-eqz v3, :cond_6

    .line 159
    .line 160
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_8

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    move-object v6, v5

    .line 175
    check-cast v6, Lteam/opay/business/core/bank/BankInfo;

    .line 176
    .line 177
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/bank/Bank;->b()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v6}, Lteam/opay/business/core/bank/BankInfo;->getCode()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_7

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    move-object v5, v1

    .line 193
    :goto_6
    check-cast v5, Lteam/opay/business/core/bank/BankInfo;

    .line 194
    .line 195
    if-eqz v5, :cond_6

    .line 196
    .line 197
    const/4 v2, 0x1

    .line 198
    invoke-virtual {v5, v2}, Lteam/opay/business/core/bank/BankInfo;->setTag(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    move-object v1, v3

    .line 203
    :cond_a
    return-object v1
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/transfer/bank/BankRepository$b;->g()Lteam/opay/core/http/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/opb/transfer/bank/BankRepository$b;->i(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Lteam/opay/opb/transfer/bank/bank/BankResponse;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankRepository$b;->c:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/transfer/bank/BankRepository;->a(Lteam/opay/opb/transfer/bank/BankRepository;)Ldv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/BankRepository$b;->d:Lteam/opay/opb/transfer/bank/bank/BankRequest;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ldv;->h(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/BankRepository$b;->d:Lteam/opay/opb/transfer/bank/bank/BankRequest;

    .line 14
    .line 15
    new-instance v2, Lbk0;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lbk0;-><init>(Lteam/opay/opb/transfer/bank/bank/BankRequest;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v3, v2, v1, v3}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public i(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
