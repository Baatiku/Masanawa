.class public final Lteam/opay/pay/bank/BanksDao_Impl;
.super Lteam/opay/pay/bank/BanksDao;
.source "BanksDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/bank/Bank;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/bank/BankFields;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/bank/BanksDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/bank/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/bank/BanksDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/bank/BanksDao_Impl$a;-><init>(Lteam/opay/pay/bank/BanksDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/bank/BanksDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/bank/BanksDao_Impl$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/bank/BanksDao_Impl$b;-><init>(Lteam/opay/pay/bank/BanksDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/bank/BanksDao_Impl;->c:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/BanksDao_Impl;->m(Ljava/util/List;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/BanksDao_Impl;->n(Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/bank/BanksDao_Impl;->k(Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/bank/BanksDao_Impl;->l(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/bank/BanksDao;->d(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k(Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM Bank"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Ld2d;->W0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ld2d;->close()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p0}, Ld2d;->close()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static synthetic l(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Bank WHERE countryCode = ?"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-interface {v2, v1}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ld2d;->l(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "code"

    .line 25
    .line 26
    invoke-static {v1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v3, "name"

    .line 31
    .line 32
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "type"

    .line 37
    .line 38
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "icon"

    .line 43
    .line 44
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "isSupportBankAccount"

    .line 49
    .line 50
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "countryCode"

    .line 55
    .line 56
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "opayBank"

    .line 61
    .line 62
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_a

    .line 76
    .line 77
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    const/4 v11, 0x0

    .line 82
    if-eqz v10, :cond_1

    .line 83
    .line 84
    move-object v13, v11

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    move-object v13, v10

    .line 91
    :goto_2
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_2

    .line 96
    .line 97
    move-object v14, v11

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    move-object v14, v10

    .line 104
    :goto_3
    invoke-interface {v1, v4}, Ld2d;->isNull(I)Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_3

    .line 109
    .line 110
    move-object v15, v11

    .line 111
    goto :goto_4

    .line 112
    :cond_3
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    move-object v15, v10

    .line 117
    :goto_4
    invoke-interface {v1, v5}, Ld2d;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_4

    .line 122
    .line 123
    move/from16 p0, v3

    .line 124
    .line 125
    move-object/from16 v16, v11

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_4
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    move/from16 p0, v3

    .line 133
    .line 134
    move-object/from16 v16, v10

    .line 135
    .line 136
    :goto_5
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    long-to-int v3, v2

    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    const/16 v17, 0x1

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    const/16 v17, 0x0

    .line 147
    .line 148
    :goto_6
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    move-object/from16 v18, v11

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    move-object/from16 v18, v3

    .line 162
    .line 163
    :goto_7
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    move-object v2, v11

    .line 170
    goto :goto_8

    .line 171
    :cond_7
    invoke-interface {v1, v8}, Ld2d;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    long-to-int v3, v2

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_8
    if-nez v2, :cond_8

    .line 181
    .line 182
    :goto_9
    move-object/from16 v19, v11

    .line 183
    .line 184
    goto :goto_b

    .line 185
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_9

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_a

    .line 193
    :cond_9
    const/4 v2, 0x0

    .line 194
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    goto :goto_9

    .line 199
    :goto_b
    new-instance v2, Lteam/opay/pay/bank/Bank;

    .line 200
    .line 201
    move-object v12, v2

    .line 202
    invoke-direct/range {v12 .. v19}, Lteam/opay/pay/bank/Bank;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    move/from16 v3, p0

    .line 209
    .line 210
    const/4 v2, 0x1

    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 214
    .line 215
    .line 216
    return-object v9

    .line 217
    :goto_c
    invoke-interface {v1}, Ld2d;->close()V

    .line 218
    .line 219
    .line 220
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lzl0;

    .line 4
    .line 5
    invoke-direct {v1}, Lzl0;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ldm0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ldm0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/bank/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lfm0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lfm0;-><init>(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lbm0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lbm0;-><init>(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, v2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final synthetic m(Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BanksDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->c(Lz1d;Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final synthetic n(Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/bank/BanksDao_Impl;->i(Lteam/opay/pay/bank/BanksDao_Impl;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
