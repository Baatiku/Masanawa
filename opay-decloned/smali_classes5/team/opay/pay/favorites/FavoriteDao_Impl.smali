.class public final Lteam/opay/pay/favorites/FavoriteDao_Impl;
.super Ljava/lang/Object;
.source "FavoriteDao_Impl.java"

# interfaces
.implements Lzw5;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/favorites/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lteam/opay/pay/favorites/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lteam/opay/pay/favorites/Favorite;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/favorites/FavoriteDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/favorites/FavoriteDao_Impl$a;-><init>(Lteam/opay/pay/favorites/FavoriteDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/favorites/FavoriteDao_Impl$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/favorites/FavoriteDao_Impl$b;-><init>(Lteam/opay/pay/favorites/FavoriteDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    new-instance p1, Lteam/opay/pay/favorites/FavoriteDao_Impl$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lteam/opay/pay/favorites/FavoriteDao_Impl$c;-><init>(Lteam/opay/pay/favorites/FavoriteDao_Impl;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl;->d:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/favorites/FavoriteDao_Impl;->d(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c()Ljava/util/List;
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

.method public static synthetic d(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "SELECT * FROM favorite WHERE user_id = ?"

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
    goto :goto_5

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string p0, "uid"

    .line 20
    .line 21
    invoke-static {p1, p0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v0, "user_id"

    .line 26
    .line 27
    invoke-static {p1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "name"

    .line 32
    .line 33
    invoke-static {p1, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "phone_number"

    .line 38
    .line 39
    invoke-static {p1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-interface {p1}, Ld2d;->W0()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-interface {p1, p0}, Ld2d;->getLong(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    long-to-int v5, v4

    .line 59
    invoke-interface {p1, v0}, Ld2d;->isNull(I)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v6, 0x0

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    move-object v4, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-interface {p1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :goto_2
    invoke-interface {p1, v1}, Ld2d;->isNull(I)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    move-object v7, v6

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    invoke-interface {p1, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    :goto_3
    invoke-interface {p1, v2}, Ld2d;->isNull(I)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    invoke-interface {p1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    :goto_4
    new-instance v8, Lteam/opay/pay/favorites/Favorite;

    .line 96
    .line 97
    invoke-direct {v8, v5, v4, v7, v6}, Lteam/opay/pay/favorites/Favorite;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {p1}, Ld2d;->close()V

    .line 105
    .line 106
    .line 107
    return-object v3

    .line 108
    :goto_5
    invoke-interface {p1}, Ld2d;->close()V

    .line 109
    .line 110
    .line 111
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/favorites/Favorite;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "favorite"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lax5;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Lax5;-><init>(Ljava/lang/String;)V

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
