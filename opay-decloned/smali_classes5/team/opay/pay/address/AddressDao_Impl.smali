.class public final Lteam/opay/pay/address/AddressDao_Impl;
.super Lteam/opay/pay/address/AddressDao;
.source "AddressDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/address/Address;",
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
    invoke-direct {p0}, Lteam/opay/pay/address/AddressDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/address/AddressDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/address/AddressDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/address/AddressDao_Impl$a;-><init>(Lteam/opay/pay/address/AddressDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/address/AddressDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic b(JLz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/address/AddressDao_Impl;->d(JLz1d;)Ljava/util/List;

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

.method public static synthetic d(JLz1d;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "SELECT * FROM Address WHERE parent_code = ? ORDER BY  CASE WHEN LOWER(name)=\'other\' THEN 1 ELSE 0 END, name COLLATE NOCASE ASC"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    invoke-interface {p2, v0, p0, p1}, Ld2d;->c(IJ)V

    .line 9
    .line 10
    .line 11
    const-string p0, "code"

    .line 12
    .line 13
    invoke-static {p2, p0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string p1, "name"

    .line 18
    .line 19
    invoke-static {p2, p1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-string v0, "parent_code"

    .line 24
    .line 25
    invoke-static {p2, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {p2}, Ld2d;->W0()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {p2, p0}, Ld2d;->getLong(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-interface {p2, p1}, Ld2d;->isNull(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_1
    move-object v6, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    invoke-interface {p2, p1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :goto_2
    invoke-interface {p2, v0}, Ld2d;->getLong(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    new-instance v2, Lteam/opay/pay/address/Address;

    .line 63
    .line 64
    move-object v3, v2

    .line 65
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/address/Address;-><init>(JLjava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    invoke-interface {p2}, Ld2d;->close()V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :goto_3
    invoke-interface {p2}, Ld2d;->close()V

    .line 79
    .line 80
    .line 81
    throw p0
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/address/AddressDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvl;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lvl;-><init>(J)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

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
