.class public final Lteam/opay/pay/settings/BankAccountsDao_Impl;
.super Lteam/opay/pay/settings/BankAccountsDao;
.source "BankAccountsDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/bank/BankAccount;",
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
    invoke-direct {p0}, Lteam/opay/pay/settings/BankAccountsDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/settings/BankAccountsDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/settings/BankAccountsDao_Impl$a;-><init>(Lteam/opay/pay/settings/BankAccountsDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->n(Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->m(Ljava/util/List;Lz1d;)Ljava/lang/Object;

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
    invoke-static {p0}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->k(Lz1d;)Ljava/lang/Object;

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
    invoke-static {p0, p1}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->l(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/settings/BankAccountsDao;->d(Ljava/util/List;)V

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
    const-string v0, "DELETE FROM BankAccount"

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM BankAccount WHERE countryCode = ?"

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
    goto/16 :goto_9

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
    new-instance v8, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_7

    .line 70
    .line 71
    invoke-interface {v1, v0}, Ld2d;->isNull(I)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const/4 v10, 0x0

    .line 76
    if-eqz v9, :cond_1

    .line 77
    .line 78
    move-object v12, v10

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    move-object v12, v9

    .line 85
    :goto_2
    invoke-interface {v1, v3}, Ld2d;->isNull(I)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_2

    .line 90
    .line 91
    move-object v13, v10

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    move-object v13, v9

    .line 98
    :goto_3
    invoke-interface {v1, v4}, Ld2d;->isNull(I)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_3

    .line 103
    .line 104
    move-object v14, v10

    .line 105
    goto :goto_4

    .line 106
    :cond_3
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    move-object v14, v9

    .line 111
    :goto_4
    invoke-interface {v1, v5}, Ld2d;->isNull(I)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    move/from16 p0, v3

    .line 118
    .line 119
    move-object v15, v10

    .line 120
    goto :goto_5

    .line 121
    :cond_4
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    move/from16 p0, v3

    .line 126
    .line 127
    move-object v15, v9

    .line 128
    :goto_5
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    long-to-int v3, v2

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    const/16 v16, 0x1

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_5
    const/4 v2, 0x0

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    :goto_6
    invoke-interface {v1, v7}, Ld2d;->isNull(I)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    :goto_7
    move-object/from16 v17, v10

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_6
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    goto :goto_7

    .line 155
    :goto_8
    new-instance v2, Lteam/opay/pay/bank/BankAccount;

    .line 156
    .line 157
    move-object v11, v2

    .line 158
    invoke-direct/range {v11 .. v17}, Lteam/opay/pay/bank/BankAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    move/from16 v3, p0

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    invoke-interface {v1}, Ld2d;->close()V

    .line 169
    .line 170
    .line 171
    return-object v8

    .line 172
    :goto_9
    invoke-interface {v1}, Ld2d;->close()V

    .line 173
    .line 174
    .line 175
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lci0;

    .line 4
    .line 5
    invoke-direct {v1}, Lci0;-><init>()V

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
            "Lteam/opay/pay/bank/BankAccount;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lai0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lai0;-><init>(Ljava/lang/String;)V

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
            "Lteam/opay/pay/bank/BankAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lbi0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lbi0;-><init>(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;)V

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
            "Lteam/opay/pay/bank/BankAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ldi0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ldi0;-><init>(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;)V

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
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountsDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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
    invoke-static {p0, p1}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->i(Lteam/opay/pay/settings/BankAccountsDao_Impl;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
