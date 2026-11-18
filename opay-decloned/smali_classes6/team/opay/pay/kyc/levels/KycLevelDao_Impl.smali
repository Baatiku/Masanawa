.class public final Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;
.super Lteam/opay/pay/kyc/levels/KycLevelDao;
.source "KycLevelDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lteam/opay/pay/database/RoomTypeConverters;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/levels/KycLevelDao;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/database/RoomTypeConverters;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/pay/database/RoomTypeConverters;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;-><init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->r(Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->p(Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->n(Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->q(Ljava/util/List;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/lang/String;Lz1d;)Lteam/opay/pay/kyc/levels/KycLevel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->o(Ljava/lang/String;Lz1d;)Lteam/opay/pay/kyc/levels/KycLevel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic k(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/levels/KycLevelDao;->e(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m()Ljava/util/List;
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

.method public static synthetic n(Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM KycLevel"

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


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lt18;

    .line 4
    .line 5
    invoke-direct {v1}, Lt18;-><init>()V

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

.method public b(Ljava/lang/String;)Lteam/opay/pay/kyc/levels/KycLevel;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ls18;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ls18;-><init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/lang/String;)V

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
    check-cast p1, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 15
    .line 16
    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lr18;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lr18;-><init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lu18;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lu18;-><init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;)V

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

.method public e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lv18;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lv18;-><init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;)V

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

.method public final synthetic o(Ljava/lang/String;Lz1d;)Lteam/opay/pay/kyc/levels/KycLevel;
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM KycLevel WHERE level = ?"

    .line 4
    .line 5
    move-object/from16 v2, p2

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
    move-object/from16 v2, p0

    .line 20
    .line 21
    goto/16 :goto_22

    .line 22
    .line 23
    :cond_0
    invoke-interface {v1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v0, "level"

    .line 27
    .line 28
    invoke-static {v1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v2, "role"

    .line 33
    .line 34
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string v3, "benefits"

    .line 39
    .line 40
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, "dailyVolumeMax_valueString"

    .line 45
    .line 46
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const-string v5, "dailyVolumeMax_currency"

    .line 51
    .line 52
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const-string/jumbo v6, "walletBalanceMax_valueString"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const-string/jumbo v7, "walletBalanceMax_currency"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const-string v8, "singleOutAmountMax_valueString"

    .line 71
    .line 72
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const-string v9, "singleOutAmountMax_currency"

    .line 77
    .line 78
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    const-string v10, "dailyOutAmountMax_valueString"

    .line 83
    .line 84
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const-string v11, "dailyOutAmountMax_currency"

    .line 89
    .line 90
    invoke-static {v1, v11}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    const-string v12, "totalOutAmountMax_valueString"

    .line 95
    .line 96
    invoke-static {v1, v12}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    const-string v13, "totalOutAmountMax_currency"

    .line 101
    .line 102
    invoke-static {v1, v13}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const-string v14, "singleInAmountMax_valueString"

    .line 107
    .line 108
    invoke-static {v1, v14}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    const-string v15, "singleInAmountMax_currency"

    .line 113
    .line 114
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    move/from16 p1, v15

    .line 119
    .line 120
    const-string v15, "totalInAmountMax_valueString"

    .line 121
    .line 122
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    move/from16 p2, v15

    .line 127
    .line 128
    const-string v15, "totalInAmountMax_currency"

    .line 129
    .line 130
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    move/from16 v16, v15

    .line 135
    .line 136
    const-string/jumbo v15, "weeklyOutAmountMax_valueString"

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    move/from16 v17, v15

    .line 144
    .line 145
    const-string/jumbo v15, "weeklyOutAmountMax_currency"

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 153
    .line 154
    .line 155
    move-result v18

    .line 156
    const/16 v19, 0x0

    .line 157
    .line 158
    if-eqz v18, :cond_20

    .line 159
    .line 160
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v18

    .line 164
    if-eqz v18, :cond_1

    .line 165
    .line 166
    move-object/from16 v21, v19

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    move-object/from16 v21, v0

    .line 174
    .line 175
    :goto_1
    invoke-interface {v1, v2}, Ld2d;->isNull(I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    move-object/from16 v22, v19

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_2
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move-object/from16 v22, v0

    .line 189
    .line 190
    :goto_2
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    move-object/from16 v2, p0

    .line 197
    .line 198
    move-object/from16 v0, v19

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    move-object/from16 v2, p0

    .line 206
    .line 207
    :goto_3
    :try_start_1
    iget-object v3, v2, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 208
    .line 209
    invoke-virtual {v3, v0}, Lteam/opay/pay/database/RoomTypeConverters;->f(Ljava/lang/String;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v23

    .line 213
    invoke-interface {v1, v4}, Ld2d;->isNull(I)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    move-object/from16 v0, v19

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_4
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :goto_4
    invoke-interface {v1, v5}, Ld2d;->isNull(I)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_5

    .line 231
    .line 232
    move-object/from16 v3, v19

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_5
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :goto_5
    new-instance v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 240
    .line 241
    invoke-direct {v4, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v1, v6}, Ld2d;->isNull(I)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    move-object/from16 v0, v19

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_6
    invoke-interface {v1, v6}, Ld2d;->J0(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :goto_6
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_7

    .line 262
    .line 263
    move-object/from16 v3, v19

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_7
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    :goto_7
    new-instance v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 271
    .line 272
    invoke-direct {v5, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_9

    .line 280
    .line 281
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_8

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_8
    move-object/from16 v26, v19

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    goto/16 :goto_22

    .line 293
    .line 294
    :cond_9
    :goto_8
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_a

    .line 299
    .line 300
    move-object/from16 v0, v19

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_a
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :goto_9
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_b

    .line 312
    .line 313
    move-object/from16 v3, v19

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_b
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    :goto_a
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 321
    .line 322
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v26, v6

    .line 326
    .line 327
    :goto_b
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_d

    .line 332
    .line 333
    invoke-interface {v1, v11}, Ld2d;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_c

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_c
    move-object/from16 v27, v19

    .line 341
    .line 342
    goto :goto_f

    .line 343
    :cond_d
    :goto_c
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_e

    .line 348
    .line 349
    move-object/from16 v0, v19

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :cond_e
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    :goto_d
    invoke-interface {v1, v11}, Ld2d;->isNull(I)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_f

    .line 361
    .line 362
    move-object/from16 v3, v19

    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_f
    invoke-interface {v1, v11}, Ld2d;->J0(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    :goto_e
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 370
    .line 371
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v27, v6

    .line 375
    .line 376
    :goto_f
    invoke-interface {v1, v12}, Ld2d;->isNull(I)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_11

    .line 381
    .line 382
    invoke-interface {v1, v13}, Ld2d;->isNull(I)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_10

    .line 387
    .line 388
    goto :goto_10

    .line 389
    :cond_10
    move-object/from16 v28, v19

    .line 390
    .line 391
    goto :goto_13

    .line 392
    :cond_11
    :goto_10
    invoke-interface {v1, v12}, Ld2d;->isNull(I)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_12

    .line 397
    .line 398
    move-object/from16 v0, v19

    .line 399
    .line 400
    goto :goto_11

    .line 401
    :cond_12
    invoke-interface {v1, v12}, Ld2d;->J0(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    :goto_11
    invoke-interface {v1, v13}, Ld2d;->isNull(I)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_13

    .line 410
    .line 411
    move-object/from16 v3, v19

    .line 412
    .line 413
    goto :goto_12

    .line 414
    :cond_13
    invoke-interface {v1, v13}, Ld2d;->J0(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    :goto_12
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 419
    .line 420
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    move-object/from16 v28, v6

    .line 424
    .line 425
    :goto_13
    invoke-interface {v1, v14}, Ld2d;->isNull(I)Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_15

    .line 430
    .line 431
    move/from16 v0, p1

    .line 432
    .line 433
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-nez v3, :cond_14

    .line 438
    .line 439
    goto :goto_14

    .line 440
    :cond_14
    move/from16 v0, p2

    .line 441
    .line 442
    move-object/from16 v29, v19

    .line 443
    .line 444
    goto :goto_17

    .line 445
    :cond_15
    move/from16 v0, p1

    .line 446
    .line 447
    :goto_14
    invoke-interface {v1, v14}, Ld2d;->isNull(I)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_16

    .line 452
    .line 453
    move-object/from16 v3, v19

    .line 454
    .line 455
    goto :goto_15

    .line 456
    :cond_16
    invoke-interface {v1, v14}, Ld2d;->J0(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    :goto_15
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_17

    .line 465
    .line 466
    move-object/from16 v0, v19

    .line 467
    .line 468
    goto :goto_16

    .line 469
    :cond_17
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    :goto_16
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 474
    .line 475
    invoke-direct {v6, v3, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    move/from16 v0, p2

    .line 479
    .line 480
    move-object/from16 v29, v6

    .line 481
    .line 482
    :goto_17
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-eqz v3, :cond_19

    .line 487
    .line 488
    move/from16 v3, v16

    .line 489
    .line 490
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-nez v6, :cond_18

    .line 495
    .line 496
    goto :goto_18

    .line 497
    :cond_18
    move/from16 v0, v17

    .line 498
    .line 499
    move-object/from16 v30, v19

    .line 500
    .line 501
    goto :goto_1b

    .line 502
    :cond_19
    move/from16 v3, v16

    .line 503
    .line 504
    :goto_18
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-eqz v6, :cond_1a

    .line 509
    .line 510
    move-object/from16 v0, v19

    .line 511
    .line 512
    goto :goto_19

    .line 513
    :cond_1a
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    :goto_19
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    if-eqz v6, :cond_1b

    .line 522
    .line 523
    move-object/from16 v3, v19

    .line 524
    .line 525
    goto :goto_1a

    .line 526
    :cond_1b
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    :goto_1a
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 531
    .line 532
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v30, v6

    .line 536
    .line 537
    move/from16 v0, v17

    .line 538
    .line 539
    :goto_1b
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-eqz v3, :cond_1d

    .line 544
    .line 545
    invoke-interface {v1, v15}, Ld2d;->isNull(I)Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-nez v3, :cond_1c

    .line 550
    .line 551
    goto :goto_1c

    .line 552
    :cond_1c
    move-object/from16 v31, v19

    .line 553
    .line 554
    goto :goto_20

    .line 555
    :cond_1d
    :goto_1c
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-eqz v3, :cond_1e

    .line 560
    .line 561
    move-object/from16 v0, v19

    .line 562
    .line 563
    goto :goto_1d

    .line 564
    :cond_1e
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    :goto_1d
    invoke-interface {v1, v15}, Ld2d;->isNull(I)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_1f

    .line 573
    .line 574
    :goto_1e
    move-object/from16 v3, v19

    .line 575
    .line 576
    goto :goto_1f

    .line 577
    :cond_1f
    invoke-interface {v1, v15}, Ld2d;->J0(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v19

    .line 581
    goto :goto_1e

    .line 582
    :goto_1f
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 583
    .line 584
    invoke-direct {v6, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    move-object/from16 v31, v6

    .line 588
    .line 589
    :goto_20
    new-instance v19, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 590
    .line 591
    move-object/from16 v20, v19

    .line 592
    .line 593
    move-object/from16 v24, v4

    .line 594
    .line 595
    move-object/from16 v25, v5

    .line 596
    .line 597
    invoke-direct/range {v20 .. v31}, Lteam/opay/pay/kyc/levels/KycLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    .line 599
    .line 600
    goto :goto_21

    .line 601
    :cond_20
    move-object/from16 v2, p0

    .line 602
    .line 603
    :goto_21
    invoke-interface {v1}, Ld2d;->close()V

    .line 604
    .line 605
    .line 606
    return-object v19

    .line 607
    :goto_22
    invoke-interface {v1}, Ld2d;->close()V

    .line 608
    .line 609
    .line 610
    throw v0
.end method

.method public final synthetic p(Lz1d;)Ljava/util/List;
    .locals 39

    .line 1
    const-string v0, "SELECT * FROM KycLevel"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v0, "level"

    .line 10
    .line 11
    invoke-static {v1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "role"

    .line 16
    .line 17
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "benefits"

    .line 22
    .line 23
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "dailyVolumeMax_valueString"

    .line 28
    .line 29
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "dailyVolumeMax_currency"

    .line 34
    .line 35
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string/jumbo v6, "walletBalanceMax_valueString"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const-string/jumbo v7, "walletBalanceMax_currency"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const-string v8, "singleOutAmountMax_valueString"

    .line 54
    .line 55
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const-string v9, "singleOutAmountMax_currency"

    .line 60
    .line 61
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const-string v10, "dailyOutAmountMax_valueString"

    .line 66
    .line 67
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    const-string v11, "dailyOutAmountMax_currency"

    .line 72
    .line 73
    invoke-static {v1, v11}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    const-string v12, "totalOutAmountMax_valueString"

    .line 78
    .line 79
    invoke-static {v1, v12}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    const-string v13, "totalOutAmountMax_currency"

    .line 84
    .line 85
    invoke-static {v1, v13}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const-string v14, "singleInAmountMax_valueString"

    .line 90
    .line 91
    invoke-static {v1, v14}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    const-string v15, "singleInAmountMax_currency"

    .line 96
    .line 97
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    move/from16 p1, v15

    .line 102
    .line 103
    const-string v15, "totalInAmountMax_valueString"

    .line 104
    .line 105
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    move/from16 v16, v15

    .line 110
    .line 111
    const-string v15, "totalInAmountMax_currency"

    .line 112
    .line 113
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    move/from16 v17, v15

    .line 118
    .line 119
    const-string/jumbo v15, "weeklyOutAmountMax_valueString"

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    move/from16 v18, v15

    .line 127
    .line 128
    const-string/jumbo v15, "weeklyOutAmountMax_currency"

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v15}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    move/from16 v19, v15

    .line 136
    .line 137
    new-instance v15, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 143
    .line 144
    .line 145
    move-result v20

    .line 146
    if-eqz v20, :cond_1f

    .line 147
    .line 148
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v20

    .line 152
    const/16 v21, 0x0

    .line 153
    .line 154
    if-eqz v20, :cond_0

    .line 155
    .line 156
    move-object/from16 v23, v21

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_0
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v20

    .line 163
    move-object/from16 v23, v20

    .line 164
    .line 165
    :goto_1
    invoke-interface {v1, v2}, Ld2d;->isNull(I)Z

    .line 166
    .line 167
    .line 168
    move-result v20

    .line 169
    if-eqz v20, :cond_1

    .line 170
    .line 171
    move-object/from16 v24, v21

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_1
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v20

    .line 178
    move-object/from16 v24, v20

    .line 179
    .line 180
    :goto_2
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 181
    .line 182
    .line 183
    move-result v20

    .line 184
    if-eqz v20, :cond_2

    .line 185
    .line 186
    move/from16 v34, v0

    .line 187
    .line 188
    move/from16 v20, v2

    .line 189
    .line 190
    move/from16 v35, v3

    .line 191
    .line 192
    move-object/from16 v0, v21

    .line 193
    .line 194
    :goto_3
    move-object/from16 v2, p0

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v20

    .line 201
    move/from16 v34, v0

    .line 202
    .line 203
    move/from16 v35, v3

    .line 204
    .line 205
    move-object/from16 v0, v20

    .line 206
    .line 207
    move/from16 v20, v2

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :goto_4
    iget-object v3, v2, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 211
    .line 212
    invoke-virtual {v3, v0}, Lteam/opay/pay/database/RoomTypeConverters;->f(Ljava/lang/String;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v25

    .line 216
    invoke-interface {v1, v4}, Ld2d;->isNull(I)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_3

    .line 221
    .line 222
    move-object/from16 v0, v21

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_3
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :goto_5
    invoke-interface {v1, v5}, Ld2d;->isNull(I)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_4

    .line 234
    .line 235
    move-object/from16 v3, v21

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_4
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    :goto_6
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 243
    .line 244
    invoke-direct {v2, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v1, v6}, Ld2d;->isNull(I)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_5

    .line 252
    .line 253
    move-object/from16 v0, v21

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_5
    invoke-interface {v1, v6}, Ld2d;->J0(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_7
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_6

    .line 265
    .line 266
    move/from16 v36, v4

    .line 267
    .line 268
    move-object/from16 v3, v21

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    move/from16 v36, v4

    .line 276
    .line 277
    :goto_8
    new-instance v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 278
    .line 279
    invoke-direct {v4, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_7

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_7
    move/from16 v37, v5

    .line 296
    .line 297
    move-object/from16 v28, v21

    .line 298
    .line 299
    goto :goto_c

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    goto/16 :goto_22

    .line 302
    .line 303
    :cond_8
    :goto_9
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_9

    .line 308
    .line 309
    move-object/from16 v0, v21

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_9
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :goto_a
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    move/from16 v37, v5

    .line 323
    .line 324
    move-object/from16 v3, v21

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_a
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    move/from16 v37, v5

    .line 332
    .line 333
    :goto_b
    new-instance v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 334
    .line 335
    invoke-direct {v5, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    move-object/from16 v28, v5

    .line 339
    .line 340
    :goto_c
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_c

    .line 345
    .line 346
    invoke-interface {v1, v11}, Ld2d;->isNull(I)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_b

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_b
    move-object/from16 v29, v21

    .line 354
    .line 355
    goto :goto_10

    .line 356
    :cond_c
    :goto_d
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_d

    .line 361
    .line 362
    move-object/from16 v0, v21

    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_d
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_e
    invoke-interface {v1, v11}, Ld2d;->isNull(I)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_e

    .line 374
    .line 375
    move-object/from16 v3, v21

    .line 376
    .line 377
    goto :goto_f

    .line 378
    :cond_e
    invoke-interface {v1, v11}, Ld2d;->J0(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    :goto_f
    new-instance v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 383
    .line 384
    invoke-direct {v5, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v29, v5

    .line 388
    .line 389
    :goto_10
    invoke-interface {v1, v12}, Ld2d;->isNull(I)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_10

    .line 394
    .line 395
    invoke-interface {v1, v13}, Ld2d;->isNull(I)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-nez v0, :cond_f

    .line 400
    .line 401
    goto :goto_11

    .line 402
    :cond_f
    move-object/from16 v30, v21

    .line 403
    .line 404
    goto :goto_14

    .line 405
    :cond_10
    :goto_11
    invoke-interface {v1, v12}, Ld2d;->isNull(I)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_11

    .line 410
    .line 411
    move-object/from16 v0, v21

    .line 412
    .line 413
    goto :goto_12

    .line 414
    :cond_11
    invoke-interface {v1, v12}, Ld2d;->J0(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :goto_12
    invoke-interface {v1, v13}, Ld2d;->isNull(I)Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_12

    .line 423
    .line 424
    move-object/from16 v3, v21

    .line 425
    .line 426
    goto :goto_13

    .line 427
    :cond_12
    invoke-interface {v1, v13}, Ld2d;->J0(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    :goto_13
    new-instance v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 432
    .line 433
    invoke-direct {v5, v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    move-object/from16 v30, v5

    .line 437
    .line 438
    :goto_14
    invoke-interface {v1, v14}, Ld2d;->isNull(I)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_14

    .line 443
    .line 444
    move/from16 v0, p1

    .line 445
    .line 446
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_13

    .line 451
    .line 452
    goto :goto_15

    .line 453
    :cond_13
    move/from16 p1, v0

    .line 454
    .line 455
    move/from16 v0, v16

    .line 456
    .line 457
    move-object/from16 v31, v21

    .line 458
    .line 459
    goto :goto_18

    .line 460
    :cond_14
    move/from16 v0, p1

    .line 461
    .line 462
    :goto_15
    invoke-interface {v1, v14}, Ld2d;->isNull(I)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-eqz v3, :cond_15

    .line 467
    .line 468
    move-object/from16 v3, v21

    .line 469
    .line 470
    goto :goto_16

    .line 471
    :cond_15
    invoke-interface {v1, v14}, Ld2d;->J0(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    :goto_16
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-eqz v5, :cond_16

    .line 480
    .line 481
    move/from16 p1, v0

    .line 482
    .line 483
    move-object/from16 v5, v21

    .line 484
    .line 485
    goto :goto_17

    .line 486
    :cond_16
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    move/from16 p1, v0

    .line 491
    .line 492
    :goto_17
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 493
    .line 494
    invoke-direct {v0, v3, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v31, v0

    .line 498
    .line 499
    move/from16 v0, v16

    .line 500
    .line 501
    :goto_18
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_18

    .line 506
    .line 507
    move/from16 v3, v17

    .line 508
    .line 509
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-nez v5, :cond_17

    .line 514
    .line 515
    goto :goto_19

    .line 516
    :cond_17
    move/from16 v17, v0

    .line 517
    .line 518
    move/from16 v16, v3

    .line 519
    .line 520
    move/from16 v0, v18

    .line 521
    .line 522
    move-object/from16 v32, v21

    .line 523
    .line 524
    goto :goto_1c

    .line 525
    :cond_18
    move/from16 v3, v17

    .line 526
    .line 527
    :goto_19
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-eqz v5, :cond_19

    .line 532
    .line 533
    move-object/from16 v5, v21

    .line 534
    .line 535
    goto :goto_1a

    .line 536
    :cond_19
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    :goto_1a
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 541
    .line 542
    .line 543
    move-result v16

    .line 544
    if-eqz v16, :cond_1a

    .line 545
    .line 546
    move/from16 v17, v0

    .line 547
    .line 548
    move/from16 v16, v3

    .line 549
    .line 550
    move-object/from16 v0, v21

    .line 551
    .line 552
    goto :goto_1b

    .line 553
    :cond_1a
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v16

    .line 557
    move/from16 v17, v0

    .line 558
    .line 559
    move-object/from16 v0, v16

    .line 560
    .line 561
    move/from16 v16, v3

    .line 562
    .line 563
    :goto_1b
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 564
    .line 565
    invoke-direct {v3, v5, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    move-object/from16 v32, v3

    .line 569
    .line 570
    move/from16 v0, v18

    .line 571
    .line 572
    :goto_1c
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    if-eqz v3, :cond_1c

    .line 577
    .line 578
    move/from16 v3, v19

    .line 579
    .line 580
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-nez v5, :cond_1b

    .line 585
    .line 586
    goto :goto_1d

    .line 587
    :cond_1b
    move/from16 v18, v0

    .line 588
    .line 589
    move/from16 v19, v3

    .line 590
    .line 591
    move-object/from16 v33, v21

    .line 592
    .line 593
    goto :goto_21

    .line 594
    :cond_1c
    move/from16 v3, v19

    .line 595
    .line 596
    :goto_1d
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    if-eqz v5, :cond_1d

    .line 601
    .line 602
    move-object/from16 v5, v21

    .line 603
    .line 604
    goto :goto_1e

    .line 605
    :cond_1d
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    :goto_1e
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 610
    .line 611
    .line 612
    move-result v18

    .line 613
    if-eqz v18, :cond_1e

    .line 614
    .line 615
    :goto_1f
    move/from16 v18, v0

    .line 616
    .line 617
    move/from16 v19, v3

    .line 618
    .line 619
    move-object/from16 v0, v21

    .line 620
    .line 621
    goto :goto_20

    .line 622
    :cond_1e
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v21

    .line 626
    goto :goto_1f

    .line 627
    :goto_20
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 628
    .line 629
    invoke-direct {v3, v5, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    move-object/from16 v33, v3

    .line 633
    .line 634
    :goto_21
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 635
    .line 636
    move-object/from16 v22, v0

    .line 637
    .line 638
    move-object/from16 v26, v2

    .line 639
    .line 640
    move-object/from16 v27, v4

    .line 641
    .line 642
    invoke-direct/range {v22 .. v33}, Lteam/opay/pay/kyc/levels/KycLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 643
    .line 644
    .line 645
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .line 647
    .line 648
    move/from16 v2, v20

    .line 649
    .line 650
    move/from16 v0, v34

    .line 651
    .line 652
    move/from16 v3, v35

    .line 653
    .line 654
    move/from16 v4, v36

    .line 655
    .line 656
    move/from16 v5, v37

    .line 657
    .line 658
    move/from16 v38, v17

    .line 659
    .line 660
    move/from16 v17, v16

    .line 661
    .line 662
    move/from16 v16, v38

    .line 663
    .line 664
    goto/16 :goto_0

    .line 665
    .line 666
    :cond_1f
    invoke-interface {v1}, Ld2d;->close()V

    .line 667
    .line 668
    .line 669
    return-object v15

    .line 670
    :goto_22
    invoke-interface {v1}, Ld2d;->close()V

    .line 671
    .line 672
    .line 673
    throw v0
.end method

.method public final synthetic q(Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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

.method public final synthetic r(Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->l(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
