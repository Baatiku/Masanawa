.class public final Lteam/opay/core/common/android/collection/FixedFormatMap;
.super Ljava/lang/Object;
.source "FixedFormatMap.kt"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "Ljava/lang/String;",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0010\'\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ7\u0010\u000e\u001a\t\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\r2\u000e\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\u00020\u00022\u000e\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\"\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0007\u001a\n \n*\u0004\u0018\u00010\u00020\u0002H\u0096\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\tJ0\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\u00020\u00022\u000e\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J@\u0010\u0015\u001a\u00020\u00112\u000e\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\u00020\u00022\u000e\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0014\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J7\u0010\u0017\u001a\t\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\r2\u000e\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\u00020\u00022\u000e\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u000fJ2\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0007\u001a\n \n*\u0004\u0018\u00010\u00020\u00022\u000e\u0010\u0018\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u000fJ6\u0010\u001d\u001a\u00020\u001c2$\u0010\u001b\u001a \u0012\u000e\u0008\u0001\u0012\n \n*\u0004\u0018\u00010\u00020\u0002\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00030\u00030\u001aH\u0096\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u001cH\u0096\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0011H\u0096\u0001\u00a2\u0006\u0004\u0008!\u0010\"J \u0010#\u001a\u00020\u00112\u000e\u0010\u0007\u001a\n \n*\u0004\u0018\u00010\u00020\u0002H\u0096\u0001\u00a2\u0006\u0004\u0008#\u0010$J \u0010%\u001a\u00020\u00112\u000e\u0010\u0018\u001a\n \n*\u0004\u0018\u00010\u00030\u0003H\u0096\u0001\u00a2\u0006\u0004\u0008%\u0010&R \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\'R\"\u0010+\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00020\u00020(8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\"\u0010/\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00030\u00030,8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R6\u00102\u001a$\u0012 \u0012\u001e\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00020\u0002\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00030\u0003000(8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00081\u0010*R\u0014\u00106\u001a\u0002038\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/core/common/android/collection/FixedFormatMap;",
        "Ljava/util/concurrent/ConcurrentMap;",
        "",
        "Ljava/text/SimpleDateFormat;",
        "delegate",
        "<init>",
        "(Ljava/util/concurrent/ConcurrentMap;)V",
        "key",
        "c",
        "(Ljava/lang/String;)Ljava/text/SimpleDateFormat;",
        "kotlin.jvm.PlatformType",
        "p0",
        "p1",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "j",
        "(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;",
        "k",
        "",
        "l",
        "(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z",
        "p2",
        "o",
        "(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z",
        "m",
        "value",
        "h",
        "",
        "from",
        "",
        "putAll",
        "(Ljava/util/Map;)V",
        "clear",
        "()V",
        "isEmpty",
        "()Z",
        "a",
        "(Ljava/lang/String;)Z",
        "b",
        "(Ljava/text/SimpleDateFormat;)Z",
        "Ljava/util/concurrent/ConcurrentMap;",
        "",
        "e",
        "()Ljava/util/Set;",
        "keys",
        "",
        "g",
        "()Ljava/util/Collection;",
        "values",
        "",
        "d",
        "entries",
        "",
        "f",
        "()I",
        "size",
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


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lteam/opay/core/common/android/collection/FixedFormatMap;-><init>(Ljava/util/concurrent/ConcurrentMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ConcurrentMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/core/common/android/collection/FixedFormatMap;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Ljava/text/SimpleDateFormat;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 24
    .line 25
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 6
    .line 7
    :goto_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/collection/FixedFormatMap;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    :goto_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/collection/FixedFormatMap;->b(Ljava/text/SimpleDateFormat;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/collection/FixedFormatMap;->d()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/collection/FixedFormatMap;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object p1
.end method

.method public k(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object p1
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/collection/FixedFormatMap;->e()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public m(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/collection/FixedFormatMap;->h(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/text/SimpleDateFormat;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/common/android/collection/FixedFormatMap;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/collection/FixedFormatMap;->j(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/collection/FixedFormatMap;->k(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/text/SimpleDateFormat;

    :goto_1
    if-nez v0, :cond_3

    return v2

    :cond_3
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/collection/FixedFormatMap;->l(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/collection/FixedFormatMap;->m(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/text/SimpleDateFormat;

    check-cast p3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/common/android/collection/FixedFormatMap;->o(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)Z

    move-result p1

    return p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/collection/FixedFormatMap;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/collection/FixedFormatMap;->g()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
