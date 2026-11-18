.class public final Lteam/opay/core/http/hilt/HttpApi;
.super Lteam/opay/core/http/IAppModule;
.source "HttpApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/hilt/HttpApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/core/http/hilt/HttpApi;",
        "Lteam/opay/core/http/IAppModule;",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/l;",
        "B",
        "()Lkotlinx/coroutines/l;",
        "",
        "text",
        "C",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lzu;",
        "f",
        "Lid8;",
        "y",
        "()Lzu;",
        "api",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "g",
        "z",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "httpScope",
        "h",
        "Companion",
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


# static fields
.field public static final h:Lteam/opay/core/http/hilt/HttpApi$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile i:Lteam/opay/core/http/hilt/HttpApi;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/http/hilt/HttpApi$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/http/hilt/HttpApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/http/hilt/HttpApi;->h:Lteam/opay/core/http/hilt/HttpApi$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lteam/opay/core/http/IAppModule;-><init>()V

    .line 3
    new-instance v0, Li47;

    invoke-direct {v0, p0}, Li47;-><init>(Lteam/opay/core/http/hilt/HttpApi;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/http/hilt/HttpApi;->f:Lid8;

    .line 4
    new-instance v0, Lj47;

    invoke-direct {v0}, Lj47;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/http/hilt/HttpApi;->g:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/http/hilt/HttpApi;-><init>()V

    return-void
.end method

.method public static final A()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic r()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/hilt/HttpApi;->A()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lteam/opay/core/http/hilt/HttpApi;)Lzu;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/hilt/HttpApi;->x(Lteam/opay/core/http/hilt/HttpApi;)Lzu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lteam/opay/core/http/hilt/HttpApi;)Lzu;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/hilt/HttpApi;->y()Lzu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u()Lteam/opay/core/http/hilt/HttpApi;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/hilt/HttpApi;->i:Lteam/opay/core/http/hilt/HttpApi;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic v(Lteam/opay/core/http/hilt/HttpApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/http/hilt/HttpApi;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/core/http/hilt/HttpApi;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/http/hilt/HttpApi;->i:Lteam/opay/core/http/hilt/HttpApi;

    .line 2
    .line 3
    return-void
.end method

.method public static final x(Lteam/opay/core/http/hilt/HttpApi;)Lzu;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/http/IAppModule;->l()Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v1, Lzu;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/http/HttpFactory;->e(Lokhttp3/OkHttpClient;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lzu;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final B()Lkotlinx/coroutines/l;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/hilt/HttpApi;->z()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/core/http/hilt/HttpApi$initData$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lteam/opay/core/http/hilt/HttpApi$initData$1;-><init>(Lteam/opay/core/http/hilt/HttpApi;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getBytes(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    array-length v2, v0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_1

    .line 37
    .line 38
    aget-byte v4, v0, v3

    .line 39
    .line 40
    and-int/lit16 v4, v4, 0xff

    .line 41
    .line 42
    const/16 v5, 0xf

    .line 43
    .line 44
    if-gt v4, v5, :cond_0

    .line 45
    .line 46
    const-string v5, "0"

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "toString(...)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public final y()Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/hilt/HttpApi;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzu;

    .line 8
    .line 9
    return-object v0
.end method

.method public final z()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/hilt/HttpApi;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method
