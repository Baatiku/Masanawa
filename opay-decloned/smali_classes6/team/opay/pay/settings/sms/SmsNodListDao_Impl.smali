.class public final Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;
.super Ljava/lang/Object;
.source "SmsNodListDao_Impl.java"

# interfaces
.implements Lteam/opay/pay/settings/sms/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/api/SmsNodeListResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lteam/opay/pay/settings/sms/SmsNodeListConverter;


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
    new-instance v0, Lteam/opay/pay/settings/sms/SmsNodeListConverter;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/pay/settings/sms/SmsNodeListConverter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->c:Lteam/opay/pay/settings/sms/SmsNodeListConverter;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;-><init>(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->j(Ljava/lang/String;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;Ljava/lang/String;Lz1d;)Lteam/opay/pay/api/SmsNodeListResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->k(Ljava/lang/String;Lz1d;)Lteam/opay/pay/api/SmsNodeListResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;Lteam/opay/pay/api/SmsNodeListResponse;Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->l(Lteam/opay/pay/api/SmsNodeListResponse;Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic h(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;)Lteam/opay/pay/settings/sms/SmsNodeListConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->c:Lteam/opay/pay/settings/sms/SmsNodeListConverter;

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
    const-string v0, "DELETE FROM SmsNodeListResponse WHERE userId = ?"

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
.method public a(Ljava/lang/String;)Lteam/opay/pay/api/SmsNodeListResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ltzd;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ltzd;-><init>(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;Ljava/lang/String;)V

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
    check-cast p1, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 15
    .line 16
    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lrzd;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lrzd;-><init>(Ljava/lang/String;)V

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

.method public c(Lteam/opay/pay/api/SmsNodeListResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lszd;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lszd;-><init>(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;Lteam/opay/pay/api/SmsNodeListResponse;)V

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

.method public d(Lteam/opay/pay/api/SmsNodeListResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/a$a;->a(Lteam/opay/pay/settings/sms/a;Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic k(Ljava/lang/String;Lz1d;)Lteam/opay/pay/api/SmsNodeListResponse;
    .locals 13

    .line 1
    const-string v0, "SELECT * FROM SmsNodeListResponse WHERE userId= ?"

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
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_0
    invoke-interface {p2, v0, p1}, Ld2d;->m(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string p1, "edited"

    .line 21
    .line 22
    invoke-static {p2, p1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string v1, "subscribeList"

    .line 27
    .line 28
    invoke-static {p2, v1}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "uneditedReason"

    .line 33
    .line 34
    invoke-static {p2, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string v3, "priceVerbal"

    .line 39
    .line 40
    invoke-static {p2, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, "userId"

    .line 45
    .line 46
    invoke-static {p2, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-interface {p2}, Ld2d;->W0()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, 0x0

    .line 55
    if-eqz v5, :cond_8

    .line 56
    .line 57
    invoke-interface {p2, p1}, Ld2d;->isNull(I)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    move-object p1, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {p2, p1}, Ld2d;->getLong(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    long-to-int p1, v7

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    if-nez p1, :cond_2

    .line 75
    .line 76
    move-object v8, v6

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x0

    .line 86
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move-object v8, p1

    .line 91
    :goto_3
    invoke-interface {p2, v1}, Ld2d;->isNull(I)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    move-object p1, v6

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-interface {p2, v1}, Ld2d;->J0(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_4
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->c:Lteam/opay/pay/settings/sms/SmsNodeListConverter;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/sms/SmsNodeListConverter;->a(Ljava/lang/String;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-interface {p2, v2}, Ld2d;->isNull(I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    move-object v10, v6

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    invoke-interface {p2, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    move-object v10, p1

    .line 122
    :goto_5
    invoke-interface {p2, v3}, Ld2d;->isNull(I)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    move-object v11, v6

    .line 129
    goto :goto_6

    .line 130
    :cond_6
    invoke-interface {p2, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    move-object v11, p1

    .line 135
    :goto_6
    invoke-interface {p2, v4}, Ld2d;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    :goto_7
    move-object v12, v6

    .line 142
    goto :goto_8

    .line 143
    :cond_7
    invoke-interface {p2, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    goto :goto_7

    .line 148
    :goto_8
    new-instance v6, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 149
    .line 150
    move-object v7, v6

    .line 151
    invoke-direct/range {v7 .. v12}, Lteam/opay/pay/api/SmsNodeListResponse;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-interface {p2}, Ld2d;->close()V

    .line 155
    .line 156
    .line 157
    return-object v6

    .line 158
    :goto_9
    invoke-interface {p2}, Ld2d;->close()V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method public final synthetic l(Lteam/opay/pay/api/SmsNodeListResponse;Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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
