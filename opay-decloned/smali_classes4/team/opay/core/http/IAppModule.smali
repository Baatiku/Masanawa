.class public abstract Lteam/opay/core/http/IAppModule;
.super Ljava/lang/Object;
.source "IAppModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0016\u001a\u00020\u000f8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0006\u001a\u0004\u0008\u0015\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u000f8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0006\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/core/http/IAppModule;",
        "",
        "<init>",
        "()V",
        "",
        "a",
        "Lid8;",
        "m",
        "()I",
        "maxRequestsPerHost",
        "Lokhttp3/ConnectionPool;",
        "b",
        "k",
        "()Lokhttp3/ConnectionPool;",
        "connectionPool",
        "Lokhttp3/OkHttpClient;",
        "c",
        "l",
        "()Lokhttp3/OkHttpClient;",
        "httpClient",
        "d",
        "j",
        "commonClient",
        "e",
        "n",
        "pushClient",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc77;

    .line 5
    .line 6
    invoke-direct {v0}, Lc77;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/core/http/IAppModule;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, Ld77;

    .line 16
    .line 17
    invoke-direct {v0}, Ld77;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/core/http/IAppModule;->b:Lid8;

    .line 25
    .line 26
    new-instance v0, Le77;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Le77;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/core/http/IAppModule;->c:Lid8;

    .line 36
    .line 37
    new-instance v0, Lf77;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lf77;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/core/http/IAppModule;->d:Lid8;

    .line 47
    .line 48
    new-instance v0, Lg77;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lg77;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lteam/opay/core/http/IAppModule;->e:Lid8;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a()Lokhttp3/ConnectionPool;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/IAppModule;->i()Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/IAppModule;->o(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()I
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/IAppModule;->p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic d(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/IAppModule;->h(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/IAppModule;->q(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/core/http/IAppModule;)Lokhttp3/ConnectionPool;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/IAppModule;->k()Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/http/IAppModule;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/IAppModule;->m()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final h(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/IAppModule$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/http/IAppModule$a;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "common"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lteam/opay/core/http/HttpFactory;->i(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final i()Lokhttp3/ConnectionPool;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/ab/HttpABConfig$Companion;->c()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Lteam/opay/core/ab/HttpABConfig$Companion;->b()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v3, v1

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-direct {v0, v2, v3, v4, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final o(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/IAppModule$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/http/IAppModule$b;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "business"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lteam/opay/core/http/HttpFactory;->i(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final p()I
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/ab/HttpABConfig$Companion;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final q(Lteam/opay/core/http/IAppModule;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/IAppModule$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/http/IAppModule$c;-><init>(Lteam/opay/core/http/IAppModule;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "business-push"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lteam/opay/core/http/HttpFactory;->i(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public final j()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k()Lokhttp3/ConnectionPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final n()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method
