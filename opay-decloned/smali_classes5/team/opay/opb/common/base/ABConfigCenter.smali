.class public final Lteam/opay/opb/common/base/ABConfigCenter;
.super Ljava/lang/Object;
.source "OpbAbConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J5\u0010\n\u001a\u00028\u0000\"\u000e\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bR$\u0010\u0010\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/opb/common/base/ABConfigCenter;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/opb/common/base/OpbAbConfig;",
        "T",
        "Ljava/lang/Class;",
        "clazz",
        "",
        "durationMs",
        "d",
        "(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;",
        "b",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "cache",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "c",
        "Lid8;",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "CacheEntry",
        "common-base_release"
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
.field public static final a:Lteam/opay/opb/common/base/ABConfigCenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/common/base/ABConfigCenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/common/base/ABConfigCenter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/opb/common/base/ABConfigCenter;->a:Lteam/opay/opb/common/base/ABConfigCenter;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/opb/common/base/ABConfigCenter;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Li;

    .line 16
    .line 17
    invoke-direct {v0}, Li;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lteam/opay/opb/common/base/ABConfigCenter;->c:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/common/base/ABConfigCenter;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final c()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/common/base/ABConfigCenter;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 10
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lteam/opay/opb/common/base/OpbAbConfig<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object v2, Lteam/opay/opb/common/base/ABConfigCenter;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    cmp-long v6, p2, v4

    .line 23
    .line 24
    if-lez v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    sub-long v6, v0, v6

    .line 31
    .line 32
    cmp-long v8, v6, p2

    .line 33
    .line 34
    if-gez v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "null cannot be cast to non-null type T of team.opay.opb.common.base.ABConfigCenter.getOpbAbConfig"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lteam/opay/opb/common/base/OpbAbConfig;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/common/base/ABConfigCenter;->c()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v3, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lteam/opay/opb/common/base/OpbAbConfig;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v6

    .line 63
    :goto_0
    sget-object v7, Lnk8;->c:Lnk8;

    .line 64
    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v9, "OpbAbConfig -> "

    .line 71
    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const/4 v9, 0x2

    .line 83
    invoke-static {v7, v8, v6, v9, v6}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Lteam/opay/opb/common/base/OpbAbConfig;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v6, v3

    .line 100
    :goto_1
    cmp-long v7, p2, v4

    .line 101
    .line 102
    if-lez v7, :cond_3

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    new-instance p2, Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;

    .line 107
    .line 108
    invoke-direct {p2, v3, v0, v1}, Lteam/opay/opb/common/base/ABConfigCenter$CacheEntry;-><init>(Ljava/lang/Object;J)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-object v6
.end method
