.class public final Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;
.super Lteam/opay/pay/wallet/HotBanksPackageDao;
.source "HotBanksPackageDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/api/HotBanksItemInfo;",
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
    invoke-direct {p0}, Lteam/opay/pay/wallet/HotBanksPackageDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl$a;-><init>(Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->f(Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->g(Ljava/util/List;Lz1d;)Ljava/lang/Object;

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

.method public static synthetic f(Lz1d;)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, "SELECT * FROM HotBanksItemInfo"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "bankName"

    .line 8
    .line 9
    invoke-static {p0, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "bankCode"

    .line 14
    .line 15
    invoke-static {p0, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "bankPackage"

    .line 20
    .line 21
    invoke-static {p0, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "bankIcon"

    .line 26
    .line 27
    invoke-static {p0, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p0}, Ld2d;->W0()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    invoke-interface {p0, v0}, Ld2d;->isNull(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    move-object v5, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {p0, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_1
    invoke-interface {p0, v1}, Ld2d;->isNull(I)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    move-object v7, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-interface {p0, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :goto_2
    invoke-interface {p0, v2}, Ld2d;->isNull(I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    move-object v8, v6

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    invoke-interface {p0, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    :goto_3
    invoke-interface {p0, v3}, Ld2d;->isNull(I)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_3

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    invoke-interface {p0, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    :goto_4
    new-instance v9, Lteam/opay/pay/api/HotBanksItemInfo;

    .line 91
    .line 92
    invoke-direct {v9, v5, v7, v8, v6}, Lteam/opay/pay/api/HotBanksItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_5

    .line 101
    :cond_4
    invoke-interface {p0}, Ld2d;->close()V

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :goto_5
    invoke-interface {p0}, Ld2d;->close()V

    .line 106
    .line 107
    .line 108
    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/HotBanksItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, La37;

    .line 4
    .line 5
    invoke-direct {v1}, La37;-><init>()V

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

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/HotBanksItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lz27;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lz27;-><init>(Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;Ljava/util/List;)V

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

.method public final synthetic g(Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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
