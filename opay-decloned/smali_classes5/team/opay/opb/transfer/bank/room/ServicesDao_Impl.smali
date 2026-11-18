.class public final Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;
.super Lteam/opay/opb/transfer/bank/room/ServicesDao;
.source "ServicesDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000c\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001b\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "Landroidx/room/RoomDatabase;",
        "__db",
        "<init>",
        "(Landroidx/room/RoomDatabase;)V",
        "",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        "services",
        "",
        "d",
        "(Ljava/util/List;)V",
        "e",
        "Landroidx/lifecycle/LiveData;",
        "c",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "id",
        "b",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "a",
        "()V",
        "Landroidx/room/RoomDatabase;",
        "Landroidx/room/EntityInsertAdapter;",
        "Landroidx/room/EntityInsertAdapter;",
        "__insertAdapterOfService",
        "Companion",
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


# static fields
.field public static final c:Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/room/RoomDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->c:Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "__db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/opb/transfer/bank/room/ServicesDao;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 10
    .line 11
    new-instance p1, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$a;

    .line 12
    .line 13
    invoke-direct {p1}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Lz1d;)Lteam/opay/opb/transfer/bank/room/Service;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->l(Ljava/lang/String;Ljava/lang/String;Lz1d;)Lteam/opay/opb/transfer/bank/room/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->n(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;

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
    invoke-static {p0, p1}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->m(Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->o(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->k(Ljava/lang/String;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k(Ljava/lang/String;Lz1d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "_connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :try_start_0
    invoke-interface {p0}, Ld2d;->W0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ld2d;->close()V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-interface {p0}, Ld2d;->close()V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public static final l(Ljava/lang/String;Ljava/lang/String;Lz1d;)Lteam/opay/opb/transfer/bank/room/Service;
    .locals 25

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "_connection"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v0, 0x1

    .line 15
    move-object/from16 v2, p1

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v1, v0, v2}, Ld2d;->m(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "type"

    .line 27
    .line 28
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "available"

    .line 33
    .line 34
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, "enabled"

    .line 39
    .line 40
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "termsAndConditionsAccepted"

    .line 45
    .line 46
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "maxVerify"

    .line 51
    .line 52
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "maxMessage"

    .line 57
    .line 58
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "min_value"

    .line 63
    .line 64
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "min_currency"

    .line 69
    .line 70
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "max_value"

    .line 75
    .line 76
    invoke-static {v1, v11}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "max_currency"

    .line 81
    .line 82
    invoke-static {v1, v12}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    const/4 v14, 0x0

    .line 91
    if-eqz v13, :cond_6

    .line 92
    .line 93
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v17

    .line 101
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    long-to-int v3, v2

    .line 106
    const/4 v2, 0x0

    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    const/16 v18, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/16 v18, 0x0

    .line 113
    .line 114
    :goto_0
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    long-to-int v4, v3

    .line 119
    if-eqz v4, :cond_1

    .line 120
    .line 121
    const/16 v19, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const/16 v19, 0x0

    .line 125
    .line 126
    :goto_1
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    long-to-int v4, v3

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    const/16 v22, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    const/16 v22, 0x0

    .line 137
    .line 138
    :goto_2
    invoke-interface {v1, v7}, Ld2d;->getLong(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    long-to-int v4, v3

    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    const/16 v23, 0x1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const/16 v23, 0x0

    .line 149
    .line 150
    :goto_3
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v24

    .line 154
    invoke-interface {v1, v9}, Ld2d;->isNull(I)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    move-object v0, v14

    .line 161
    goto :goto_4

    .line 162
    :cond_4
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_4
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v3, Lteam/opay/core/common/amount/MoneyAmount;

    .line 171
    .line 172
    invoke-direct {v3, v0, v2}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v11}, Ld2d;->isNull(I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    invoke-interface {v1, v11}, Ld2d;->J0(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    :goto_5
    invoke-interface {v1, v12}, Ld2d;->J0(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v2, Lteam/opay/core/common/amount/MoneyAmount;

    .line 191
    .line 192
    invoke-direct {v2, v14, v0}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v14, Lteam/opay/opb/transfer/bank/room/Service;

    .line 196
    .line 197
    move-object v15, v14

    .line 198
    move-object/from16 v20, v3

    .line 199
    .line 200
    move-object/from16 v21, v2

    .line 201
    .line 202
    invoke-direct/range {v15 .. v24}, Lteam/opay/opb/transfer/bank/room/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    goto :goto_7

    .line 208
    :cond_6
    :goto_6
    invoke-interface {v1}, Ld2d;->close()V

    .line 209
    .line 210
    .line 211
    return-object v14

    .line 212
    :goto_7
    invoke-interface {v1}, Ld2d;->close()V

    .line 213
    .line 214
    .line 215
    throw v0
.end method

.method public static final m(Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_connection"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v0, "id"

    .line 15
    .line 16
    invoke-static {v1, v0}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v2, "type"

    .line 21
    .line 22
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "available"

    .line 27
    .line 28
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "enabled"

    .line 33
    .line 34
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, "termsAndConditionsAccepted"

    .line 39
    .line 40
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "maxVerify"

    .line 45
    .line 46
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "maxMessage"

    .line 51
    .line 52
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "min_value"

    .line 57
    .line 58
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "min_currency"

    .line 63
    .line 64
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "max_value"

    .line 69
    .line 70
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "max_currency"

    .line 75
    .line 76
    invoke-static {v1, v11}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    if-eqz v13, :cond_6

    .line 90
    .line 91
    invoke-interface {v1, v0}, Ld2d;->J0(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    invoke-interface {v1, v3}, Ld2d;->getLong(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v13

    .line 103
    long-to-int v14, v13

    .line 104
    const/16 v17, 0x1

    .line 105
    .line 106
    if-eqz v14, :cond_0

    .line 107
    .line 108
    const/16 v18, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_0
    const/16 v18, 0x0

    .line 112
    .line 113
    :goto_1
    invoke-interface {v1, v4}, Ld2d;->getLong(I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    long-to-int v14, v13

    .line 118
    move/from16 p1, v2

    .line 119
    .line 120
    move/from16 v24, v3

    .line 121
    .line 122
    if-eqz v14, :cond_1

    .line 123
    .line 124
    const/4 v13, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    const/4 v13, 0x0

    .line 127
    :goto_2
    invoke-interface {v1, v5}, Ld2d;->getLong(I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    long-to-int v3, v2

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    const/16 v21, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_2
    const/16 v21, 0x0

    .line 138
    .line 139
    :goto_3
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    long-to-int v3, v2

    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    const/16 v22, 0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_3
    const/16 v22, 0x0

    .line 150
    .line 151
    :goto_4
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v23

    .line 155
    invoke-interface {v1, v8}, Ld2d;->isNull(I)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_5

    .line 163
    :cond_4
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :goto_5
    invoke-interface {v1, v9}, Ld2d;->J0(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    new-instance v3, Lteam/opay/core/common/amount/MoneyAmount;

    .line 172
    .line 173
    invoke-direct {v3, v2, v14}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v1, v10}, Ld2d;->isNull(I)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    goto :goto_6

    .line 184
    :cond_5
    invoke-interface {v1, v10}, Ld2d;->J0(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :goto_6
    invoke-interface {v1, v11}, Ld2d;->J0(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    move/from16 p0, v0

    .line 193
    .line 194
    new-instance v0, Lteam/opay/core/common/amount/MoneyAmount;

    .line 195
    .line 196
    invoke-direct {v0, v2, v14}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lteam/opay/opb/transfer/bank/room/Service;

    .line 200
    .line 201
    move-object v14, v2

    .line 202
    move/from16 v17, v18

    .line 203
    .line 204
    move/from16 v18, v13

    .line 205
    .line 206
    move-object/from16 v19, v3

    .line 207
    .line 208
    move-object/from16 v20, v0

    .line 209
    .line 210
    invoke-direct/range {v14 .. v23}, Lteam/opay/opb/transfer/bank/room/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    move/from16 v0, p0

    .line 217
    .line 218
    move/from16 v2, p1

    .line 219
    .line 220
    move/from16 v3, v24

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :catchall_0
    move-exception v0

    .line 225
    goto :goto_7

    .line 226
    :cond_6
    invoke-interface {v1}, Ld2d;->close()V

    .line 227
    .line 228
    .line 229
    return-object v12

    .line 230
    :goto_7
    invoke-interface {v1}, Ld2d;->close()V

    .line 231
    .line 232
    .line 233
    throw v0
.end method

.method public static final n(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "_connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->c(Lz1d;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final o(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/opb/transfer/bank/room/ServicesDao;->e(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Ltgd;

    .line 4
    .line 5
    const-string v2, "DELETE FROM Service"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ltgd;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v0, v2, v3, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Service"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lngd;

    .line 19
    .line 20
    const-string v3, "SELECT * FROM Service WHERE id = ?"

    .line 21
    .line 22
    invoke-direct {v2, v3, p1}, Lngd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, v1, p1, v2}, Landroidx/room/InvalidationTracker;->n([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Service"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lpgd;

    .line 14
    .line 15
    const-string v3, "SELECT * FROM Service"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lpgd;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v3, v2}, Landroidx/room/InvalidationTracker;->n([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "services"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    new-instance v1, Lvgd;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lvgd;-><init>(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, p1, v2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "services"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    new-instance v1, Lrgd;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lrgd;-><init>(Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, p1, v2, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
