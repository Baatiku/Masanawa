.class public final Lteam/opay/pay/transfer/AcTransferDao_Impl;
.super Ljava/lang/Object;
.source "AcTransferDao_Impl.java"

# interfaces
.implements Lteam/opay/pay/transfer/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lteam/opay/pay/transfer/AcTransferTypeConverter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/pay/transfer/AcTransferTypeConverter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->c:Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/transfer/AcTransferDao_Impl$a;-><init>(Lteam/opay/pay/transfer/AcTransferDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/transfer/AcTransferDao_Impl;Ljava/lang/String;Lz1d;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->k(Ljava/lang/String;Lz1d;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/transfer/AcTransferDao_Impl;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->l(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->j(Ljava/lang/String;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic h(Lteam/opay/pay/transfer/AcTransferDao_Impl;)Lteam/opay/pay/transfer/AcTransferTypeConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->c:Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static i()Ljava/util/List;
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

.method public static synthetic j(Ljava/lang/String;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM TransferPersonsRsp WHERE userId = ?"

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
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ld2d;->W0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ld2d;->close()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :goto_1
    invoke-interface {p1}, Ld2d;->close()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lk8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lk8;-><init>(Lteam/opay/pay/transfer/AcTransferDao_Impl;Ljava/lang/String;)V

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
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 15
    .line 16
    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Li8;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Li8;-><init>(Ljava/lang/String;)V

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

.method public c(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/a$a;->a(Lteam/opay/pay/transfer/a;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lj8;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lj8;-><init>(Lteam/opay/pay/transfer/AcTransferDao_Impl;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

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

.method public final synthetic k(Ljava/lang/String;Lz1d;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 8

    .line 1
    const-string v0, "SELECT * FROM TransferPersonsRsp WHERE userId= ?"

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
    if-nez p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2, v0}, Ld2d;->l(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    invoke-interface {p2, v0, p1}, Ld2d;->m(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string p1, "historyFlag"

    .line 21
    .line 22
    invoke-static {p2, p1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string v1, "saveContacts"

    .line 27
    .line 28
    invoke-static {p2, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "recentContacts"

    .line 33
    .line 34
    invoke-static {p2, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string v3, "userId"

    .line 39
    .line 40
    invoke-static {p2, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-interface {p2}, Ld2d;->W0()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v4, :cond_7

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ld2d;->isNull(I)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    move-object p1, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {p2, p1}, Ld2d;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    long-to-int p1, v6

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_1
    if-nez p1, :cond_2

    .line 69
    .line 70
    move-object p1, v5

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_3
    invoke-interface {p2, v1}, Ld2d;->isNull(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    move-object v0, v5

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-interface {p2, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_4
    iget-object v1, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->c:Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lteam/opay/pay/transfer/AcTransferTypeConverter;->a(Ljava/lang/String;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {p2, v2}, Ld2d;->isNull(I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    move-object v1, v5

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    invoke-interface {p2, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :goto_5
    iget-object v2, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->c:Lteam/opay/pay/transfer/AcTransferTypeConverter;

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Lteam/opay/pay/transfer/AcTransferTypeConverter;->a(Ljava/lang/String;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {p2, v3}, Ld2d;->isNull(I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_6
    invoke-interface {p2, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :goto_6
    new-instance v2, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 132
    .line 133
    invoke-direct {v2, p1, v0, v1, v5}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    move-object v5, v2

    .line 137
    :cond_7
    invoke-interface {p2}, Ld2d;->close()V

    .line 138
    .line 139
    .line 140
    return-object v5

    .line 141
    :goto_7
    invoke-interface {p2}, Ld2d;->close()V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method public final synthetic l(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/AcTransferDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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
