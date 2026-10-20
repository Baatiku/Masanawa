.class public final Lteam/opay/pay/ad/AdReachDao_Impl;
.super Ljava/lang/Object;
.source "AdReachDao_Impl.java"

# interfaces
.implements Lxh;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/ad/AdReachEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lteam/opay/pay/ad/AdReachEntity;",
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
    iput-object p1, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/ad/AdReachDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/ad/AdReachDao_Impl$a;-><init>(Lteam/opay/pay/ad/AdReachDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/ad/AdReachDao_Impl$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/ad/AdReachDao_Impl$b;-><init>(Lteam/opay/pay/ad/AdReachDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/ad/AdReachDao_Impl;Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/AdReachDao_Impl;->i(Ljava/util/List;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/AdReachDao_Impl;->j(Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/ad/AdReachDao_Impl;Lteam/opay/pay/ad/AdReachEntity;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/AdReachDao_Impl;->h(Lteam/opay/pay/ad/AdReachEntity;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g()Ljava/util/List;
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

.method public static synthetic j(Lz1d;)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, "SELECT * FROM adReach  ORDER BY id DESC limit 20"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "id"

    .line 8
    .line 9
    invoke-static {p0, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "adpCode"

    .line 14
    .line 15
    invoke-static {p0, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "adID"

    .line 20
    .line 21
    invoke-static {p0, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "userId"

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
    if-eqz v5, :cond_3

    .line 41
    .line 42
    invoke-interface {p0, v0}, Ld2d;->getLong(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    long-to-int v6, v5

    .line 47
    invoke-interface {p0, v1}, Ld2d;->isNull(I)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v7, 0x0

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    move-object v5, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {p0, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :goto_1
    invoke-interface {p0, v2}, Ld2d;->isNull(I)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 65
    .line 66
    move-object v8, v7

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-interface {p0, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    :goto_2
    invoke-interface {p0, v3}, Ld2d;->isNull(I)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_2

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    invoke-interface {p0, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_3
    new-instance v9, Lteam/opay/pay/ad/AdReachEntity;

    .line 84
    .line 85
    invoke-direct {v9, v6, v5, v8, v7}, Lteam/opay/pay/ad/AdReachEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_4

    .line 94
    :cond_3
    invoke-interface {p0}, Ld2d;->close()V

    .line 95
    .line 96
    .line 97
    return-object v4

    .line 98
    :goto_4
    invoke-interface {p0}, Ld2d;->close()V

    .line 99
    .line 100
    .line 101
    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/ad/AdReachEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lai;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lai;-><init>(Lteam/opay/pay/ad/AdReachDao_Impl;Ljava/util/List;)V

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

.method public b(Lteam/opay/pay/ad/AdReachEntity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lzh;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lzh;-><init>(Lteam/opay/pay/ad/AdReachDao_Impl;Lteam/opay/pay/ad/AdReachEntity;)V

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

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/ad/AdReachEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lyh;

    .line 4
    .line 5
    invoke-direct {v1}, Lyh;-><init>()V

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

.method public final synthetic h(Lteam/opay/pay/ad/AdReachEntity;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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

.method public final synthetic i(Ljava/util/List;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachDao_Impl;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->c(Lz1d;Ljava/lang/Iterable;)I

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method
