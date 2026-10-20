.class public final Lteam/opay/core/http/cache/CacheConfig;
.super Ljava/lang/Object;
.source "CacheConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/cache/CacheConfig$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0001:\u0001&B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J6\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\n\u0008\u0000\u0010\t*\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cH\u0097\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ,\u0010\u0013\u001a\u00020\u0012\"\n\u0008\u0000\u0010\u0010*\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0015R\u0011\u0010\u0017\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0008R\u0011\u0010\u0019\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0008R\u0011\u0010\u001b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0008R\u0011\u0010\u001f\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010!\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0008R\u0016\u0010%\u001a\u0004\u0018\u00010\"8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/core/http/cache/CacheConfig;",
        "",
        "Lteam/opay/core/http/cache/CacheConfig$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/core/http/cache/CacheConfig$Builder;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "V",
        "key",
        "config",
        "Ljava/lang/reflect/Type;",
        "type",
        "c",
        "(Ljava/lang/String;Lteam/opay/core/http/cache/CacheConfig;Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "T",
        "data",
        "",
        "h",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "Lteam/opay/core/http/cache/CacheConfig$Builder;",
        "a",
        "assetsName",
        "b",
        "cacheMode",
        "d",
        "code",
        "",
        "f",
        "()J",
        "maxAge",
        "g",
        "uniqueCode",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "e",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "Builder",
        "common-http_release"
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
.field public final synthetic a:Lteam/opay/core/http/cache/HttpCache;

.field public final synthetic b:Lteam/opay/core/common/android/delegate/IGenericImpl;

.field public final c:Lteam/opay/core/http/cache/CacheConfig$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/cache/CacheConfig$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lteam/opay/core/http/cache/HttpCache;->b:Lteam/opay/core/http/cache/HttpCache$Companion;

    invoke-virtual {v0}, Lteam/opay/core/http/cache/HttpCache$Companion;->a()Lteam/opay/core/http/cache/HttpCache;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->a:Lteam/opay/core/http/cache/HttpCache;

    new-instance v0, Lteam/opay/core/common/android/delegate/IGenericImpl;

    invoke-direct {v0}, Lteam/opay/core/common/android/delegate/IGenericImpl;-><init>()V

    iput-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->b:Lteam/opay/core/common/android/delegate/IGenericImpl;

    .line 4
    iput-object p1, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/http/cache/CacheConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/http/cache/CacheConfig;-><init>(Lteam/opay/core/http/cache/CacheConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cache/CacheConfig$Builder;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cache/CacheConfig$Builder;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Ljava/lang/String;Lteam/opay/core/http/cache/CacheConfig;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/cache/CacheConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lteam/opay/core/http/cache/CacheConfig;",
            "Ljava/lang/reflect/Type;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->a:Lteam/opay/core/http/cache/HttpCache;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/core/http/cache/HttpCache;->d(Ljava/lang/String;Lteam/opay/core/http/cache/CacheConfig;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cache/CacheConfig$Builder;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->b:Lteam/opay/core/common/android/delegate/IGenericImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/delegate/IGenericImpl;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cache/CacheConfig$Builder;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->c:Lteam/opay/core/http/cache/CacheConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cache/CacheConfig$Builder;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/http/cache/CacheConfig;->e()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_1
    if-nez v2, :cond_2

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v0, v2

    .line 34
    :cond_3
    :goto_1
    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/http/cache/CacheConfig;->a:Lteam/opay/core/http/cache/HttpCache;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/http/cache/HttpCache;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/cache/CacheConfig;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/http/cache/CacheConfig;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/http/cache/CacheConfig;->f()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v5, "CacheConfig: [cacheMode="

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ",assetsName="

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ",maxAge="

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "]"

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
