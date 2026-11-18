.class public final Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;
.super Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;
.source "FlashSaleRemindDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
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
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl$a;-><init>(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->g(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->f(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e()Ljava/util/List;
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

.method public static synthetic f(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 13

    .line 1
    const-string v0, "SELECT * FROM flashSaleRemind WHERE userId = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ld2d;->l(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1, v0, p0}, Ld2d;->m(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string p0, "id"

    .line 21
    .line 22
    invoke-static {p1, p0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v0, "userId"

    .line 27
    .line 28
    invoke-static {p1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "sessionNo"

    .line 33
    .line 34
    invoke-static {p1, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "productId"

    .line 39
    .line 40
    invoke-static {p1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "dailyEndTime"

    .line 45
    .line 46
    invoke-static {p1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {p1}, Ld2d;->W0()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    invoke-interface {p1, p0}, Ld2d;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    long-to-int v8, v5

    .line 66
    invoke-interface {p1, v0}, Ld2d;->isNull(I)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x0

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    move-object v9, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-interface {p1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v9, v5

    .line 80
    :goto_2
    invoke-interface {p1, v1}, Ld2d;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    move-object v10, v6

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-interface {p1, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    move-object v10, v5

    .line 93
    :goto_3
    invoke-interface {p1, v2}, Ld2d;->isNull(I)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    move-object v11, v6

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    invoke-interface {p1, v2}, Ld2d;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    move-object v11, v5

    .line 110
    :goto_4
    invoke-interface {p1, v3}, Ld2d;->isNull(I)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    move-object v12, v6

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    invoke-interface {p1, v3}, Ld2d;->getLong(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    move-object v12, v5

    .line 127
    :goto_5
    new-instance v5, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 128
    .line 129
    move-object v7, v5

    .line 130
    invoke-direct/range {v7 .. v12}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-interface {p1}, Ld2d;->close()V

    .line 138
    .line 139
    .line 140
    return-object v4

    .line 141
    :goto_6
    invoke-interface {p1}, Ld2d;->close()V

    .line 142
    .line 143
    .line 144
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Le56;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Le56;-><init>(Ljava/lang/String;)V

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

.method public b(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lf56;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lf56;-><init>(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;)V

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

.method public final synthetic g(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->d(Lz1d;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method
