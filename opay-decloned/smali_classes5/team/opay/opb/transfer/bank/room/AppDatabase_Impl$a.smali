.class public final Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl$a;
.super Landroidx/room/RoomOpenDelegate;
.source "AppDatabase_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->Z()Landroidx/room/RoomOpenDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "team/opay/opb/transfer/bank/room/AppDatabase_Impl$a",
        "Landroidx/room/RoomOpenDelegate;",
        "Lz1d;",
        "connection",
        "",
        "a",
        "(Lz1d;)V",
        "b",
        "f",
        "g",
        "i",
        "h",
        "Landroidx/room/RoomOpenDelegate$ValidationResult;",
        "j",
        "(Lz1d;)Landroidx/room/RoomOpenDelegate$ValidationResult;",
        "business-transfer-bank_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl$a;->d:Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;

    .line 2
    .line 3
    const-string p1, "56798483fd75070d30be03396cec11b4"

    .line 4
    .line 5
    const-string v0, "c0ba91a6487db292f5554c9de4ee474e"

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {p0, v1, p1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `BankInfo` (`code` TEXT NOT NULL, `name` TEXT NOT NULL, `type` TEXT NOT NULL, `icon` TEXT NOT NULL, `isSupportBankAccount` INTEGER NOT NULL, `countryCode` TEXT NOT NULL, `letter` TEXT NOT NULL, `businessType` INTEGER NOT NULL, `tag` INTEGER NOT NULL, `altCode` TEXT NOT NULL, `serviceType` TEXT NOT NULL, PRIMARY KEY(`altCode`))"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `BankFields` (`bankCode` TEXT NOT NULL, `birthDateRequired` INTEGER NOT NULL, `emailRequired` INTEGER NOT NULL, `firstNameRequired` INTEGER NOT NULL, `lastNameRequired` INTEGER NOT NULL, PRIMARY KEY(`bankCode`))"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `Service` (`id` TEXT NOT NULL, `type` TEXT NOT NULL, `available` INTEGER NOT NULL, `enabled` INTEGER NOT NULL, `termsAndConditionsAccepted` INTEGER NOT NULL, `maxVerify` INTEGER NOT NULL, `maxMessage` TEXT NOT NULL, `min_value` TEXT, `min_currency` TEXT NOT NULL, `max_value` TEXT, `max_currency` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'56798483fd75070d30be03396cec11b4\')"

    .line 27
    .line 28
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `BankInfo`"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `BankFields`"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `Service`"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly1d;->a(Lz1d;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public f(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl$a;->d:Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->Y(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;Lz1d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Lz1d;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljz2;->a(Lz1d;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Lz1d;)Landroidx/room/RoomOpenDelegate$ValidationResult;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "connection"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const-string v3, "code"

    .line 18
    .line 19
    const-string v4, "TEXT"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v2, v9

    .line 24
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v2, "code"

    .line 28
    .line 29
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 33
    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v16, 0x1

    .line 36
    .line 37
    const-string v11, "name"

    .line 38
    .line 39
    const-string v12, "TEXT"

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    const/4 v14, 0x0

    .line 43
    move-object v10, v2

    .line 44
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v3, "name"

    .line 48
    .line 49
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x1

    .line 56
    const-string v5, "type"

    .line 57
    .line 58
    const-string v6, "TEXT"

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v4, v2

    .line 63
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string v3, "type"

    .line 67
    .line 68
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 72
    .line 73
    const-string v5, "icon"

    .line 74
    .line 75
    const-string v6, "TEXT"

    .line 76
    .line 77
    move-object v4, v2

    .line 78
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string v4, "icon"

    .line 82
    .line 83
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x1

    .line 90
    const-string v6, "isSupportBankAccount"

    .line 91
    .line 92
    const-string v7, "INTEGER"

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    const/4 v9, 0x0

    .line 96
    move-object v5, v2

    .line 97
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    const-string v4, "isSupportBankAccount"

    .line 101
    .line 102
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 106
    .line 107
    const-string v6, "countryCode"

    .line 108
    .line 109
    const-string v7, "TEXT"

    .line 110
    .line 111
    move-object v5, v2

    .line 112
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    const-string v4, "countryCode"

    .line 116
    .line 117
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 121
    .line 122
    const-string v6, "letter"

    .line 123
    .line 124
    const-string v7, "TEXT"

    .line 125
    .line 126
    move-object v5, v2

    .line 127
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string v4, "letter"

    .line 131
    .line 132
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 136
    .line 137
    const-string v6, "businessType"

    .line 138
    .line 139
    const-string v7, "INTEGER"

    .line 140
    .line 141
    move-object v5, v2

    .line 142
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    const-string v4, "businessType"

    .line 146
    .line 147
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 151
    .line 152
    const-string v6, "tag"

    .line 153
    .line 154
    const-string v7, "INTEGER"

    .line 155
    .line 156
    move-object v5, v2

    .line 157
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    const-string v4, "tag"

    .line 161
    .line 162
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 166
    .line 167
    const-string v6, "altCode"

    .line 168
    .line 169
    const-string v7, "TEXT"

    .line 170
    .line 171
    const/4 v9, 0x1

    .line 172
    move-object v5, v2

    .line 173
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    const-string v4, "altCode"

    .line 177
    .line 178
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 182
    .line 183
    const-string v6, "serviceType"

    .line 184
    .line 185
    const-string v7, "TEXT"

    .line 186
    .line 187
    const/4 v9, 0x0

    .line 188
    move-object v5, v2

    .line 189
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string v4, "serviceType"

    .line 193
    .line 194
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 203
    .line 204
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 205
    .line 206
    .line 207
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 208
    .line 209
    const-string v6, "BankInfo"

    .line 210
    .line 211
    invoke-direct {v5, v6, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 212
    .line 213
    .line 214
    sget-object v1, Landroidx/room/util/TableInfo;->e:Landroidx/room/util/TableInfo$Companion;

    .line 215
    .line 216
    invoke-virtual {v1, v0, v6}, Landroidx/room/util/TableInfo$Companion;->a(Lz1d;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v5, v2}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    const-string v6, "\n Found:\n"

    .line 225
    .line 226
    const/4 v7, 0x0

    .line 227
    if-nez v4, :cond_0

    .line 228
    .line 229
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v3, "BankInfo(team.opay.business.core.bank.BankInfo).\n Expected:\n"

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-direct {v0, v7, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 259
    .line 260
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    .line 262
    .line 263
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 264
    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v14, 0x1

    .line 267
    const-string v9, "bankCode"

    .line 268
    .line 269
    const-string v10, "TEXT"

    .line 270
    .line 271
    const/4 v11, 0x1

    .line 272
    const/4 v12, 0x1

    .line 273
    move-object v8, v4

    .line 274
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    const-string v5, "bankCode"

    .line 278
    .line 279
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 283
    .line 284
    const-string v9, "birthDateRequired"

    .line 285
    .line 286
    const-string v10, "INTEGER"

    .line 287
    .line 288
    const/4 v12, 0x0

    .line 289
    move-object v8, v4

    .line 290
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string v5, "birthDateRequired"

    .line 294
    .line 295
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 299
    .line 300
    const-string v9, "emailRequired"

    .line 301
    .line 302
    const-string v10, "INTEGER"

    .line 303
    .line 304
    move-object v8, v4

    .line 305
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    const-string v5, "emailRequired"

    .line 309
    .line 310
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 314
    .line 315
    const-string v9, "firstNameRequired"

    .line 316
    .line 317
    const-string v10, "INTEGER"

    .line 318
    .line 319
    move-object v8, v4

    .line 320
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    const-string v5, "firstNameRequired"

    .line 324
    .line 325
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 329
    .line 330
    const-string v9, "lastNameRequired"

    .line 331
    .line 332
    const-string v10, "INTEGER"

    .line 333
    .line 334
    move-object v8, v4

    .line 335
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    const-string v5, "lastNameRequired"

    .line 339
    .line 340
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 344
    .line 345
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 346
    .line 347
    .line 348
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 349
    .line 350
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 351
    .line 352
    .line 353
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 354
    .line 355
    const-string v9, "BankFields"

    .line 356
    .line 357
    invoke-direct {v8, v9, v2, v4, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v0, v9}, Landroidx/room/util/TableInfo$Companion;->a(Lz1d;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v8, v2}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-nez v4, :cond_1

    .line 369
    .line 370
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 371
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v3, "BankFields(team.opay.opb.transfer.bank.room.BankFields).\n Expected:\n"

    .line 378
    .line 379
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-direct {v0, v7, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return-object v0

    .line 399
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 400
    .line 401
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 402
    .line 403
    .line 404
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 405
    .line 406
    const/4 v13, 0x0

    .line 407
    const/4 v14, 0x1

    .line 408
    const/4 v11, 0x1

    .line 409
    const/4 v12, 0x1

    .line 410
    const-string v9, "id"

    .line 411
    .line 412
    const-string v10, "TEXT"

    .line 413
    .line 414
    move-object v8, v4

    .line 415
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    const-string v5, "id"

    .line 419
    .line 420
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 424
    .line 425
    const/4 v12, 0x0

    .line 426
    const-string v9, "type"

    .line 427
    .line 428
    const-string v10, "TEXT"

    .line 429
    .line 430
    move-object v8, v4

    .line 431
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 438
    .line 439
    const/16 v20, 0x0

    .line 440
    .line 441
    const/16 v21, 0x1

    .line 442
    .line 443
    const/16 v18, 0x1

    .line 444
    .line 445
    const/16 v19, 0x0

    .line 446
    .line 447
    const-string v16, "available"

    .line 448
    .line 449
    const-string v17, "INTEGER"

    .line 450
    .line 451
    move-object v15, v3

    .line 452
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    const-string v4, "available"

    .line 456
    .line 457
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 461
    .line 462
    const-string v9, "enabled"

    .line 463
    .line 464
    const-string v10, "INTEGER"

    .line 465
    .line 466
    move-object v8, v3

    .line 467
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 468
    .line 469
    .line 470
    const-string v4, "enabled"

    .line 471
    .line 472
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 476
    .line 477
    const-string v9, "termsAndConditionsAccepted"

    .line 478
    .line 479
    const-string v10, "INTEGER"

    .line 480
    .line 481
    move-object v8, v3

    .line 482
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 483
    .line 484
    .line 485
    const-string v4, "termsAndConditionsAccepted"

    .line 486
    .line 487
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 491
    .line 492
    const-string v9, "maxVerify"

    .line 493
    .line 494
    const-string v10, "INTEGER"

    .line 495
    .line 496
    move-object v8, v3

    .line 497
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 498
    .line 499
    .line 500
    const-string v4, "maxVerify"

    .line 501
    .line 502
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 506
    .line 507
    const-string v9, "maxMessage"

    .line 508
    .line 509
    const-string v10, "TEXT"

    .line 510
    .line 511
    move-object v8, v3

    .line 512
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 513
    .line 514
    .line 515
    const-string v4, "maxMessage"

    .line 516
    .line 517
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 521
    .line 522
    const/4 v11, 0x0

    .line 523
    const-string v9, "min_value"

    .line 524
    .line 525
    const-string v10, "TEXT"

    .line 526
    .line 527
    move-object v8, v3

    .line 528
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 529
    .line 530
    .line 531
    const-string v4, "min_value"

    .line 532
    .line 533
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 537
    .line 538
    const/4 v11, 0x1

    .line 539
    const-string v9, "min_currency"

    .line 540
    .line 541
    const-string v10, "TEXT"

    .line 542
    .line 543
    move-object v8, v3

    .line 544
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 545
    .line 546
    .line 547
    const-string v4, "min_currency"

    .line 548
    .line 549
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 553
    .line 554
    const/4 v11, 0x0

    .line 555
    const-string v9, "max_value"

    .line 556
    .line 557
    const-string v10, "TEXT"

    .line 558
    .line 559
    move-object v8, v3

    .line 560
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 561
    .line 562
    .line 563
    const-string v4, "max_value"

    .line 564
    .line 565
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 569
    .line 570
    const/4 v11, 0x1

    .line 571
    const-string v9, "max_currency"

    .line 572
    .line 573
    const-string v10, "TEXT"

    .line 574
    .line 575
    move-object v8, v3

    .line 576
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 577
    .line 578
    .line 579
    const-string v4, "max_currency"

    .line 580
    .line 581
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 585
    .line 586
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 587
    .line 588
    .line 589
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 590
    .line 591
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 592
    .line 593
    .line 594
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 595
    .line 596
    const-string v8, "Service"

    .line 597
    .line 598
    invoke-direct {v5, v8, v2, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v0, v8}, Landroidx/room/util/TableInfo$Companion;->a(Lz1d;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {v5, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-nez v1, :cond_2

    .line 610
    .line 611
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 612
    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    const-string v3, "Service(team.opay.opb.transfer.bank.room.Service).\n Expected:\n"

    .line 619
    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-direct {v1, v7, v0}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 637
    .line 638
    .line 639
    return-object v1

    .line 640
    :cond_2
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 641
    .line 642
    const/4 v1, 0x1

    .line 643
    const/4 v2, 0x0

    .line 644
    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 645
    .line 646
    .line 647
    return-object v0
.end method
