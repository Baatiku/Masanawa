.class public final Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;
.super Lteam/opay/opb/transfer/bank/room/BanksDao;
.source "BanksDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000c2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000c\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ#\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "Landroidx/room/RoomDatabase;",
        "__db",
        "<init>",
        "(Landroidx/room/RoomDatabase;)V",
        "",
        "Lteam/opay/business/core/bank/BankInfo;",
        "banks",
        "",
        "c",
        "(Ljava/util/List;)V",
        "d",
        "",
        "countryCode",
        "Landroidx/lifecycle/LiveData;",
        "b",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "a",
        "()V",
        "Landroidx/room/RoomDatabase;",
        "Landroidx/room/EntityInsertAdapter;",
        "Landroidx/room/EntityInsertAdapter;",
        "__insertAdapterOfBankInfo",
        "Lteam/opay/opb/transfer/bank/room/BankFields;",
        "__insertAdapterOfBankFields",
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
.field public static final d:Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;
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
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/opb/transfer/bank/room/BankFields;",
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
    new-instance v0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->d:Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;

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
    invoke-direct {p0}, Lteam/opay/opb/transfer/bank/room/BanksDao;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 10
    .line 11
    new-instance p1, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$a;

    .line 12
    .line 13
    invoke-direct {p1}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 17
    .line 18
    new-instance p1, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$b;

    .line 19
    .line 20
    invoke-direct {p1}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->c:Landroidx/room/EntityInsertAdapter;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic e(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->k(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->i(Ljava/lang/String;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->l(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->j(Ljava/lang/String;Ljava/lang/String;Lz1d;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i(Ljava/lang/String;Lz1d;)Lkotlin/Unit;
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

.method public static final j(Ljava/lang/String;Ljava/lang/String;Lz1d;)Ljava/util/List;
    .locals 27

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
    const-string v2, "code"

    .line 21
    .line 22
    invoke-static {v1, v2}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "name"

    .line 27
    .line 28
    invoke-static {v1, v3}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "type"

    .line 33
    .line 34
    invoke-static {v1, v4}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, "icon"

    .line 39
    .line 40
    invoke-static {v1, v5}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "isSupportBankAccount"

    .line 45
    .line 46
    invoke-static {v1, v6}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "countryCode"

    .line 51
    .line 52
    invoke-static {v1, v7}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "letter"

    .line 57
    .line 58
    invoke-static {v1, v8}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "businessType"

    .line 63
    .line 64
    invoke-static {v1, v9}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "tag"

    .line 69
    .line 70
    invoke-static {v1, v10}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "altCode"

    .line 75
    .line 76
    invoke-static {v1, v11}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "serviceType"

    .line 81
    .line 82
    invoke-static {v1, v12}, Le2d;->c(Ld2d;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    new-instance v13, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {v1}, Ld2d;->W0()Z

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    if-eqz v14, :cond_1

    .line 96
    .line 97
    invoke-interface {v1, v2}, Ld2d;->J0(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    invoke-interface {v1, v3}, Ld2d;->J0(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    invoke-interface {v1, v4}, Ld2d;->J0(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v18

    .line 109
    invoke-interface {v1, v5}, Ld2d;->J0(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v19

    .line 113
    invoke-interface {v1, v6}, Ld2d;->getLong(I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v14

    .line 117
    long-to-int v15, v14

    .line 118
    if-eqz v15, :cond_0

    .line 119
    .line 120
    const/16 v20, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    const/4 v14, 0x0

    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    :goto_1
    invoke-interface {v1, v7}, Ld2d;->J0(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v21

    .line 130
    invoke-interface {v1, v8}, Ld2d;->J0(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v22

    .line 134
    invoke-interface {v1, v9}, Ld2d;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v14

    .line 138
    long-to-int v15, v14

    .line 139
    move/from16 p0, v2

    .line 140
    .line 141
    move/from16 p1, v3

    .line 142
    .line 143
    invoke-interface {v1, v10}, Ld2d;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    long-to-int v3, v2

    .line 148
    invoke-interface {v1, v11}, Ld2d;->J0(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v25

    .line 152
    invoke-interface {v1, v12}, Ld2d;->J0(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v26

    .line 156
    new-instance v2, Lteam/opay/business/core/bank/BankInfo;

    .line 157
    .line 158
    move v14, v15

    .line 159
    move-object v15, v2

    .line 160
    move/from16 v23, v14

    .line 161
    .line 162
    move/from16 v24, v3

    .line 163
    .line 164
    invoke-direct/range {v15 .. v26}, Lteam/opay/business/core/bank/BankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    move/from16 v2, p0

    .line 171
    .line 172
    move/from16 v3, p1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    goto :goto_2

    .line 177
    :cond_1
    invoke-interface {v1}, Ld2d;->close()V

    .line 178
    .line 179
    .line 180
    return-object v13

    .line 181
    :goto_2
    invoke-interface {v1}, Ld2d;->close()V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public static final k(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "_connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

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

.method public static final l(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;Lz1d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/opb/transfer/bank/room/BanksDao;->d(Ljava/util/List;)V

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
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcm0;

    .line 4
    .line 5
    const-string v2, "DELETE FROM BankInfo"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcm0;-><init>(Ljava/lang/String;)V

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
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "countryCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()Landroidx/room/InvalidationTracker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "BankInfo"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lam0;

    .line 19
    .line 20
    const-string v3, "SELECT * FROM BankInfo WHERE countryCode = ?"

    .line 21
    .line 22
    invoke-direct {v2, v3, p1}, Lam0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

.method public c(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "banks"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    new-instance v1, Lgm0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lgm0;-><init>(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;)V

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
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "banks"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    new-instance v1, Lem0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lem0;-><init>(Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;Ljava/util/List;)V

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
