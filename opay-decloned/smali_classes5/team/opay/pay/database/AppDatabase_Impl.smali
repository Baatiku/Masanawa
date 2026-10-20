.class public final Lteam/opay/pay/database/AppDatabase_Impl;
.super Lteam/opay/pay/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field public volatile A:Lxh;

.field public volatile B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

.field public volatile n:Lzw5;

.field public volatile o:Lteam/opay/core/auth/AuthDataDao;

.field public volatile p:Lteam/opay/pay/home/pay/ServicesDao;

.field public volatile q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

.field public volatile r:Lteam/opay/pay/bank/BanksDao;

.field public volatile s:Lteam/opay/pay/kyc/levels/KycLevelDao;

.field public volatile t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

.field public volatile u:Lteam/opay/pay/settings/BankAccountsDao;

.field public volatile v:Lteam/opay/pay/address/AddressDao;

.field public volatile w:Lteam/opay/pay/transfer/contact/TransferContactDao;

.field public volatile x:Lteam/opay/pay/transfer/a;

.field public volatile y:Lteam/opay/pay/settings/sms/a;

.field public volatile z:Lteam/opay/pay/wallet/HotBanksPackageDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/database/AppDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lteam/opay/pay/database/AppDatabase_Impl;Lz1d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->M(Lz1d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lzw5;

    .line 7
    .line 8
    invoke-static {}, Lteam/opay/pay/favorites/FavoriteDao_Impl;->c()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao;

    .line 16
    .line 17
    invoke-static {}, Lteam/opay/core/payment/instruments/PaymentInstrumentsDao_Impl;->b()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-class v1, Lteam/opay/pay/messages/MessageDao;

    .line 25
    .line 26
    invoke-static {}, Lteam/opay/pay/messages/MessageDao_Impl;->b()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-class v1, Lteam/opay/core/auth/AuthDataDao;

    .line 34
    .line 35
    invoke-static {}, Lteam/opay/core/auth/AuthDataDao_Impl;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-class v1, Lteam/opay/pay/home/pay/ServicesDao;

    .line 43
    .line 44
    invoke-static {}, Lteam/opay/pay/home/pay/ServicesDao_Impl;->p()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-class v1, Lteam/opay/pay/payment/airtime/AirtimeBundleDao;

    .line 52
    .line 53
    invoke-static {}, Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl;->a()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-class v1, Lteam/opay/pay/payment/data/MobileDataOperatorDao;

    .line 61
    .line 62
    invoke-static {}, Lteam/opay/pay/payment/data/MobileDataOperatorDao_Impl;->b()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-class v1, Lteam/opay/pay/payment/electricity/nigeria/ElectricityDistributorDao;

    .line 70
    .line 71
    invoke-static {}, Lteam/opay/pay/payment/electricity/nigeria/ElectricityDistributorDao_Impl;->b()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-class v1, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 79
    .line 80
    invoke-static {}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->d()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-class v1, Lteam/opay/pay/bank/BanksDao;

    .line 88
    .line 89
    invoke-static {}, Lteam/opay/pay/bank/BanksDao_Impl;->j()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-class v1, Lteam/opay/pay/payment/tv/TVProviderDao;

    .line 97
    .line 98
    invoke-static {}, Lteam/opay/pay/payment/tv/TVProviderDao_Impl;->b()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-class v1, Lo5d;

    .line 106
    .line 107
    invoke-static {}, Lteam/opay/pay/wallet/SearchHistoryDao_Impl;->a()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-class v1, Lteam/opay/pay/easycash/EasycashBanksDao;

    .line 115
    .line 116
    invoke-static {}, Lteam/opay/pay/easycash/EasycashBanksDao_Impl;->b()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-class v1, Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 124
    .line 125
    invoke-static {}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->m()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-class v1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 133
    .line 134
    invoke-static {}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;->j()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-class v1, Lteam/opay/pay/settings/BankAccountsDao;

    .line 142
    .line 143
    invoke-static {}, Lteam/opay/pay/settings/BankAccountsDao_Impl;->j()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const-class v1, Lteam/opay/pay/address/AddressDao;

    .line 151
    .line 152
    invoke-static {}, Lteam/opay/pay/address/AddressDao_Impl;->c()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-class v1, Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 160
    .line 161
    invoke-static {}, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;->a()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const-class v1, Lteam/opay/pay/transfer/a;

    .line 169
    .line 170
    invoke-static {}, Lteam/opay/pay/transfer/AcTransferDao_Impl;->i()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-class v1, Lteam/opay/pay/settings/sms/a;

    .line 178
    .line 179
    invoke-static {}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->i()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-class v1, Lh;

    .line 187
    .line 188
    invoke-static {}, Lteam/opay/pay/transfer/AATransferContactDao_Impl;->a()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-class v1, Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 196
    .line 197
    invoke-static {}, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;->e()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-class v1, Lteam/opay/core/android/arch/NetworkCacheDataDao;

    .line 205
    .line 206
    invoke-static {}, Lteam/opay/core/android/arch/NetworkCacheDataDao_Impl;->a()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-class v1, Lxh;

    .line 214
    .line 215
    invoke-static {}, Lteam/opay/pay/ad/AdReachDao_Impl;->g()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-class v1, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 223
    .line 224
    invoke-static {}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;->e()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    return-object v0
.end method

.method public S()Lteam/opay/pay/transfer/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->x:Lteam/opay/pay/transfer/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->x:Lteam/opay/pay/transfer/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->x:Lteam/opay/pay/transfer/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/transfer/AcTransferDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/AcTransferDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->x:Lteam/opay/pay/transfer/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->x:Lteam/opay/pay/transfer/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public T()Lxh;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->A:Lxh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->A:Lxh;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->A:Lxh;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/ad/AdReachDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/ad/AdReachDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->A:Lxh;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->A:Lxh;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public U()Lteam/opay/pay/address/AddressDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->v:Lteam/opay/pay/address/AddressDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->v:Lteam/opay/pay/address/AddressDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->v:Lteam/opay/pay/address/AddressDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/address/AddressDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/address/AddressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->v:Lteam/opay/pay/address/AddressDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->v:Lteam/opay/pay/address/AddressDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public V()Lteam/opay/core/auth/AuthDataDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->o:Lteam/opay/core/auth/AuthDataDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->o:Lteam/opay/core/auth/AuthDataDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->o:Lteam/opay/core/auth/AuthDataDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/auth/AuthDataDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/core/auth/AuthDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->o:Lteam/opay/core/auth/AuthDataDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->o:Lteam/opay/core/auth/AuthDataDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public W()Lteam/opay/pay/settings/BankAccountsDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->u:Lteam/opay/pay/settings/BankAccountsDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->u:Lteam/opay/pay/settings/BankAccountsDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->u:Lteam/opay/pay/settings/BankAccountsDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/settings/BankAccountsDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/BankAccountsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->u:Lteam/opay/pay/settings/BankAccountsDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->u:Lteam/opay/pay/settings/BankAccountsDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public X()Lteam/opay/pay/bank/BanksDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->r:Lteam/opay/pay/bank/BanksDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->r:Lteam/opay/pay/bank/BanksDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->r:Lteam/opay/pay/bank/BanksDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/bank/BanksDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/bank/BanksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->r:Lteam/opay/pay/bank/BanksDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->r:Lteam/opay/pay/bank/BanksDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public Y()Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->q:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public Z()Lzw5;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->n:Lzw5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->n:Lzw5;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->n:Lzw5;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/favorites/FavoriteDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/favorites/FavoriteDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->n:Lzw5;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->n:Lzw5;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public a0()Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->B:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public b0()Lteam/opay/pay/wallet/HotBanksPackageDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->z:Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->z:Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->z:Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/HotBanksPackageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->z:Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->z:Lteam/opay/pay/wallet/HotBanksPackageDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public c0()Lteam/opay/pay/kyc/levels/KycLevelDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->s:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->s:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->s:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->s:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->s:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public d0()Lteam/opay/pay/home/pay/ServicesDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->p:Lteam/opay/pay/home/pay/ServicesDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->p:Lteam/opay/pay/home/pay/ServicesDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->p:Lteam/opay/pay/home/pay/ServicesDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/home/pay/ServicesDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/home/pay/ServicesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->p:Lteam/opay/pay/home/pay/ServicesDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->p:Lteam/opay/pay/home/pay/ServicesDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public e0()Lteam/opay/pay/settings/sms/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->y:Lteam/opay/pay/settings/sms/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->y:Lteam/opay/pay/settings/sms/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->y:Lteam/opay/pay/settings/sms/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->y:Lteam/opay/pay/settings/sms/a;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->y:Lteam/opay/pay/settings/sms/a;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public f0()Lteam/opay/pay/transfer/contact/TransferContactDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->w:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->w:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->w:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->w:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->w:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public g0()Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/database/AppDatabase_Impl;->t:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public i0()Landroidx/room/RoomOpenDelegate;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/database/AppDatabase_Impl$a;

    .line 2
    .line 3
    const-string v1, "f59784f2e8de4e78b1f2f2eaeeff7c8f"

    .line 4
    .line 5
    const-string v2, "553df470fa8a8357ae1deeb48090130b"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lteam/opay/pay/database/AppDatabase_Impl$a;-><init>(Lteam/opay/pay/database/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public o()Landroidx/room/InvalidationTracker;
    .locals 29
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/room/InvalidationTracker;

    .line 13
    .line 14
    const-string v27, "adReach"

    .line 15
    .line 16
    const-string v28, "flashSaleRemind"

    .line 17
    .line 18
    const-string v3, "Favorite"

    .line 19
    .line 20
    const-string v4, "instruments"

    .line 21
    .line 22
    const-string v5, "Message"

    .line 23
    .line 24
    const-string v6, "AirtimeBundle"

    .line 25
    .line 26
    const-string v7, "ElectricityPlan"

    .line 27
    .line 28
    const-string v8, "Bank"

    .line 29
    .line 30
    const-string v9, "BankFields"

    .line 31
    .line 32
    const-string v10, "KycLevel"

    .line 33
    .line 34
    const-string v11, "MobileDataOperator"

    .line 35
    .line 36
    const-string v12, "ElectricityDistributor"

    .line 37
    .line 38
    const-string v13, "TVProvider"

    .line 39
    .line 40
    const-string v14, "AuthData"

    .line 41
    .line 42
    const-string v15, "SearchHistory"

    .line 43
    .line 44
    const-string v16, "Service"

    .line 45
    .line 46
    const-string v17, "easycash_banks"

    .line 47
    .line 48
    const-string v18, "TransferHistory"

    .line 49
    .line 50
    const-string v19, "BankAccount"

    .line 51
    .line 52
    const-string v20, "Address"

    .line 53
    .line 54
    const-string v21, "TransferContact"

    .line 55
    .line 56
    const-string v22, "TransferPersonsRsp"

    .line 57
    .line 58
    const-string v23, "SmsNodeListResponse"

    .line 59
    .line 60
    const-string v24, "TransferContactData"

    .line 61
    .line 62
    const-string v25, "HotBanksItemInfo"

    .line 63
    .line 64
    const-string v26, "NetworkCacheData"

    .line 65
    .line 66
    filled-new-array/range {v3 .. v28}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object/from16 v4, p0

    .line 71
    .line 72
    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method

.method public bridge synthetic p()Ly0d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/database/AppDatabase_Impl;->i0()Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public t(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
