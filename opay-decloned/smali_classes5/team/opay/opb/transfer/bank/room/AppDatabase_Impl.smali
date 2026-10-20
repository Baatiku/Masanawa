.class public final Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;
.super Lteam/opay/opb/transfer/bank/room/AppDatabase;
.source "AppDatabase_Impl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\r\u001a\u001c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u000c0\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b0\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c2\u001a\u0010\u0013\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b\u0012\u0004\u0012\u00020\u00100\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;",
        "Lteam/opay/opb/transfer/bank/room/AppDatabase;",
        "<init>",
        "()V",
        "Landroidx/room/RoomOpenDelegate;",
        "Z",
        "()Landroidx/room/RoomOpenDelegate;",
        "Landroidx/room/InvalidationTracker;",
        "o",
        "()Landroidx/room/InvalidationTracker;",
        "",
        "Lho7;",
        "",
        "B",
        "()Ljava/util/Map;",
        "",
        "",
        "z",
        "()Ljava/util/Set;",
        "autoMigrationSpecs",
        "Landroidx/room/migration/Migration;",
        "l",
        "(Ljava/util/Map;)Ljava/util/List;",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "S",
        "()Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "T",
        "()Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "Lid8;",
        "n",
        "Lid8;",
        "_banksDao",
        "_servicesDao",
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
.field public final n:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/opb/transfer/bank/room/BanksDao;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/transfer/bank/room/AppDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lry;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lry;-><init>(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->n:Lid8;

    .line 14
    .line 15
    new-instance v0, Lsy;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lsy;-><init>(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->o:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic U(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->X(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->W(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final X(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic Y(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;Lz1d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->M(Lz1d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lho7<",
            "*>;",
            "Ljava/util/List<",
            "Lho7<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lteam/opay/opb/transfer/bank/room/BanksDao;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;->d:Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$Companion;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-class v1, Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;->c:Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;

    .line 28
    .line 29
    invoke-virtual {v2}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$Companion;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public S()Lteam/opay/opb/transfer/bank/room/BanksDao;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/transfer/bank/room/BanksDao;

    .line 8
    .line 9
    return-object v0
.end method

.method public T()Lteam/opay/opb/transfer/bank/room/ServicesDao;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 8
    .line 9
    return-object v0
.end method

.method public Z()Landroidx/room/RoomOpenDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl$a;-><init>(Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public l(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lho7<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "autoMigrationSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public o()Landroidx/room/InvalidationTracker;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    const-string v3, "BankFields"

    .line 14
    .line 15
    const-string v4, "Service"

    .line 16
    .line 17
    const-string v5, "BankInfo"

    .line 18
    .line 19
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public bridge synthetic p()Ly0d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/transfer/bank/room/AppDatabase_Impl;->Z()Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public z()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lho7<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
