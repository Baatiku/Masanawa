.class public final Lteam/opay/pay/home/pay/ServicesDao_Impl;
.super Lteam/opay/pay/home/pay/ServicesDao;
.source "ServicesDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/home/pay/Service;",
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
    invoke-direct {p0}, Lteam/opay/pay/home/pay/ServicesDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/home/pay/ServicesDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/home/pay/ServicesDao_Impl$a;-><init>(Lteam/opay/pay/home/pay/ServicesDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic h(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->w(Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->q(Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->s(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->u(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->v(Ljava/util/List;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->r(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->t(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao;->g(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static p()Ljava/util/List;
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

.method public static synthetic q(Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM Service"

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

.method public static synthetic r(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Service WHERE id = ?"

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
    goto/16 :goto_a

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
    const-string v3, "type"

    .line 31
    .line 32
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "available"

    .line 37
    .line 38
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "enabled"

    .line 43
    .line 44
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "termsAndConditionsAccepted"

    .line 49
    .line 50
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "minAmount_valueString"

    .line 55
    .line 56
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "minAmount_currency"

    .line 61
    .line 62
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "maxAmount_valueString"

    .line 67
    .line 68
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "maxAmount_currency"

    .line 73
    .line 74
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v11, :cond_a

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_1

    .line 90
    .line 91
    move-object v14, v12

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v14, v0

    .line 98
    :goto_1
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    move-object v15, v12

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v15, v0

    .line 111
    :goto_2
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v0, v3

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    const/16 v16, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const/16 v16, 0x0

    .line 123
    .line 124
    :goto_3
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    long-to-int v0, v4

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const/16 v17, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v17, 0x0

    .line 135
    .line 136
    :goto_4
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    long-to-int v0, v4

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const/16 v20, 0x1

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_5
    const/16 v20, 0x0

    .line 147
    .line 148
    :goto_5
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    move-object v0, v12

    .line 155
    goto :goto_6

    .line 156
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    move-object v2, v12

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_7
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 173
    .line 174
    invoke-direct {v3, v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    move-object v0, v12

    .line 184
    goto :goto_8

    .line 185
    :cond_8
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_8
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_9
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    :goto_9
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    invoke-direct {v2, v0, v12}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v12, Lteam/opay/pay/home/pay/Service;

    .line 206
    .line 207
    move-object v13, v12

    .line 208
    move-object/from16 v18, v3

    .line 209
    .line 210
    move-object/from16 v19, v2

    .line 211
    .line 212
    invoke-direct/range {v13 .. v20}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 216
    .line 217
    .line 218
    return-object v12

    .line 219
    :goto_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 220
    .line 221
    .line 222
    throw v0
.end method

.method public static synthetic s(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Service WHERE type = ?"

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
    goto/16 :goto_a

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
    const-string v3, "type"

    .line 31
    .line 32
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "available"

    .line 37
    .line 38
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "enabled"

    .line 43
    .line 44
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "termsAndConditionsAccepted"

    .line 49
    .line 50
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "minAmount_valueString"

    .line 55
    .line 56
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "minAmount_currency"

    .line 61
    .line 62
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "maxAmount_valueString"

    .line 67
    .line 68
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "maxAmount_currency"

    .line 73
    .line 74
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v11, :cond_a

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_1

    .line 90
    .line 91
    move-object v14, v12

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v14, v0

    .line 98
    :goto_1
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    move-object v15, v12

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v15, v0

    .line 111
    :goto_2
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v0, v3

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    const/16 v16, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const/16 v16, 0x0

    .line 123
    .line 124
    :goto_3
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    long-to-int v0, v4

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const/16 v17, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v17, 0x0

    .line 135
    .line 136
    :goto_4
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    long-to-int v0, v4

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const/16 v20, 0x1

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_5
    const/16 v20, 0x0

    .line 147
    .line 148
    :goto_5
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    move-object v0, v12

    .line 155
    goto :goto_6

    .line 156
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    move-object v2, v12

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_7
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 173
    .line 174
    invoke-direct {v3, v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    move-object v0, v12

    .line 184
    goto :goto_8

    .line 185
    :cond_8
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_8
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_9
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    :goto_9
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    invoke-direct {v2, v0, v12}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v12, Lteam/opay/pay/home/pay/Service;

    .line 206
    .line 207
    move-object v13, v12

    .line 208
    move-object/from16 v18, v3

    .line 209
    .line 210
    move-object/from16 v19, v2

    .line 211
    .line 212
    invoke-direct/range {v13 .. v20}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 216
    .line 217
    .line 218
    return-object v12

    .line 219
    :goto_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 220
    .line 221
    .line 222
    throw v0
.end method

.method public static synthetic t(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Service WHERE id = ?"

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
    goto/16 :goto_a

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
    const-string v3, "type"

    .line 31
    .line 32
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "available"

    .line 37
    .line 38
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "enabled"

    .line 43
    .line 44
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "termsAndConditionsAccepted"

    .line 49
    .line 50
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "minAmount_valueString"

    .line 55
    .line 56
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "minAmount_currency"

    .line 61
    .line 62
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "maxAmount_valueString"

    .line 67
    .line 68
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "maxAmount_currency"

    .line 73
    .line 74
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v11, :cond_a

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_1

    .line 90
    .line 91
    move-object v14, v12

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v14, v0

    .line 98
    :goto_1
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    move-object v15, v12

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v15, v0

    .line 111
    :goto_2
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v0, v3

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    const/16 v16, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const/16 v16, 0x0

    .line 123
    .line 124
    :goto_3
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    long-to-int v0, v4

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const/16 v17, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v17, 0x0

    .line 135
    .line 136
    :goto_4
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    long-to-int v0, v4

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const/16 v20, 0x1

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_5
    const/16 v20, 0x0

    .line 147
    .line 148
    :goto_5
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    move-object v0, v12

    .line 155
    goto :goto_6

    .line 156
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    move-object v2, v12

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_7
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 173
    .line 174
    invoke-direct {v3, v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    move-object v0, v12

    .line 184
    goto :goto_8

    .line 185
    :cond_8
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_8
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_9
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    :goto_9
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    invoke-direct {v2, v0, v12}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v12, Lteam/opay/pay/home/pay/Service;

    .line 206
    .line 207
    move-object v13, v12

    .line 208
    move-object/from16 v18, v3

    .line 209
    .line 210
    move-object/from16 v19, v2

    .line 211
    .line 212
    invoke-direct/range {v13 .. v20}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 216
    .line 217
    .line 218
    return-object v12

    .line 219
    :goto_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 220
    .line 221
    .line 222
    throw v0
.end method

.method public static synthetic u(Ljava/lang/String;Lz1d;)Lteam/opay/pay/home/pay/Service;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Service WHERE type = ?"

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
    goto/16 :goto_a

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
    const-string v3, "type"

    .line 31
    .line 32
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "available"

    .line 37
    .line 38
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "enabled"

    .line 43
    .line 44
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "termsAndConditionsAccepted"

    .line 49
    .line 50
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "minAmount_valueString"

    .line 55
    .line 56
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "minAmount_currency"

    .line 61
    .line 62
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "maxAmount_valueString"

    .line 67
    .line 68
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "maxAmount_currency"

    .line 73
    .line 74
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v11, :cond_a

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_1

    .line 90
    .line 91
    move-object v14, v12

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v14, v0

    .line 98
    :goto_1
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    move-object v15, v12

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v15, v0

    .line 111
    :goto_2
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v0, v3

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    const/16 v16, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const/16 v16, 0x0

    .line 123
    .line 124
    :goto_3
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    long-to-int v0, v4

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const/16 v17, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v17, 0x0

    .line 135
    .line 136
    :goto_4
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    long-to-int v0, v4

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const/16 v20, 0x1

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_5
    const/16 v20, 0x0

    .line 147
    .line 148
    :goto_5
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    move-object v0, v12

    .line 155
    goto :goto_6

    .line 156
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    move-object v2, v12

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_7
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 173
    .line 174
    invoke-direct {v3, v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    move-object v0, v12

    .line 184
    goto :goto_8

    .line 185
    :cond_8
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_8
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_9
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    :goto_9
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    invoke-direct {v2, v0, v12}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v12, Lteam/opay/pay/home/pay/Service;

    .line 206
    .line 207
    move-object v13, v12

    .line 208
    move-object/from16 v18, v3

    .line 209
    .line 210
    move-object/from16 v19, v2

    .line 211
    .line 212
    invoke-direct/range {v13 .. v20}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 216
    .line 217
    .line 218
    return-object v12

    .line 219
    :goto_a
    invoke-interface {v1}, Ld2d;->close()V

    .line 220
    .line 221
    .line 222
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwgd;

    .line 4
    .line 5
    invoke-direct {v1}, Lwgd;-><init>()V

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

.method public b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Service"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lugd;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Lugd;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroidx/room/InvalidationTracker;->n([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Service"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Logd;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Logd;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroidx/room/InvalidationTracker;->n([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public d(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lqgd;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lqgd;-><init>(Ljava/lang/String;)V

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
    check-cast p1, Lteam/opay/pay/home/pay/Service;

    .line 15
    .line 16
    return-object p1
.end method

.method public e(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lmgd;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lmgd;-><init>(Ljava/lang/String;)V

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
    check-cast p1, Lteam/opay/pay/home/pay/Service;

    .line 15
    .line 16
    return-object p1
.end method

.method public f(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lsgd;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lsgd;-><init>(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;)V

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

.method public g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxgd;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lxgd;-><init>(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;)V

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

.method public final synthetic v(Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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

.method public final synthetic w(Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->o(Lteam/opay/pay/home/pay/ServicesDao_Impl;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
