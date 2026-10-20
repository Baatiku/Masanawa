.class public final Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;
.super Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;
.source "TransferHistoryDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
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
    invoke-direct {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl$a;-><init>(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic e(Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->k(Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->l(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->m(Ljava/util/List;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->n(Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;->d(Ljava/util/List;)V

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
    const-string v0, "DELETE FROM TransferHistory"

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM TransferHistory WHERE userId = ?"

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
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "id"

    .line 25
    .line 26
    invoke-static {v1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "userId"

    .line 31
    .line 32
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "cardNo"

    .line 37
    .line 38
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "name"

    .line 43
    .line 44
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "bankName"

    .line 49
    .line 50
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "code"

    .line 55
    .line 56
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "action"

    .line 61
    .line 62
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_7

    .line 76
    .line 77
    invoke-interface {v1, v0}, Ld2d;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v9

    .line 81
    long-to-int v12, v9

    .line 82
    invoke-interface {v1, v2}, Ld2d;->isNull(I)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/4 v10, 0x0

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    move-object v13, v10

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    move-object v13, v9

    .line 96
    :goto_2
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    move-object v14, v10

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    move-object v14, v9

    .line 109
    :goto_3
    invoke-interface {v1, v4}, Ld2d;->isNull(I)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_3

    .line 114
    .line 115
    move-object v15, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    move-object v15, v9

    .line 122
    :goto_4
    invoke-interface {v1, v5}, Ld2d;->isNull(I)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_4

    .line 127
    .line 128
    move-object/from16 v16, v10

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_4
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    move-object/from16 v16, v9

    .line 136
    .line 137
    :goto_5
    invoke-interface {v1, v6}, Ld2d;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_5

    .line 142
    .line 143
    move-object/from16 v17, v10

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    invoke-interface {v1, v6}, Ld2d;->J0(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    move-object/from16 v17, v9

    .line 151
    .line 152
    :goto_6
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_6

    .line 157
    .line 158
    move-object/from16 v18, v10

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    move-object/from16 v18, v9

    .line 166
    .line 167
    :goto_7
    new-instance v9, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 168
    .line 169
    move-object v11, v9

    .line 170
    invoke-direct/range {v11 .. v18}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    invoke-interface {v1}, Ld2d;->close()V

    .line 178
    .line 179
    .line 180
    return-object v8

    .line 181
    :goto_8
    invoke-interface {v1}, Ld2d;->close()V

    .line 182
    .line 183
    .line 184
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ln6f;

    .line 4
    .line 5
    invoke-direct {v1}, Ln6f;-><init>()V

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
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lm6f;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lm6f;-><init>(Ljava/lang/String;)V

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
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lp6f;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lp6f;-><init>(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;)V

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
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lo6f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lo6f;-><init>(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;)V

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
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->i(Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
