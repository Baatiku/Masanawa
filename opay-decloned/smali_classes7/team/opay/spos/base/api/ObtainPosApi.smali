.class public final Lteam/opay/spos/base/api/ObtainPosApi;
.super Ljava/lang/Object;
.source "ObtainPosApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\t\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001f\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0019\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010\"\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0019\u001a\u0004\u0008!\u0010\u001eR\u0011\u0010%\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010\'\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/spos/base/api/ObtainPosApi;",
        "",
        "<init>",
        "()V",
        "T",
        "Ljava/lang/Class;",
        "cls",
        "",
        "timeOut",
        "d",
        "(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;",
        "Lokhttp3/OkHttpClient;",
        "g",
        "(Ljava/lang/Long;)Lokhttp3/OkHttpClient;",
        "",
        "",
        "headers",
        "",
        "c",
        "(Ljava/util/Map;)V",
        "Lteam/opay/spos/base/spi/IPosStorage;",
        "b",
        "Lteam/opay/spos/base/spi/IPosStorage;",
        "iPosStorage",
        "Lokhttp3/ConnectionPool;",
        "Lid8;",
        "h",
        "()Lokhttp3/ConnectionPool;",
        "connectionPool",
        "getSpecialOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "specialOkHttpClient",
        "e",
        "getDisableCerPosApiOkHttpClient",
        "disableCerPosApiOkHttpClient",
        "f",
        "()Ljava/lang/String;",
        "appToken",
        "i",
        "pospToken",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/spos/base/api/ObtainPosApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lteam/opay/spos/base/spi/IPosStorage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/api/ObtainPosApi;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/base/api/ObtainPosApi;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->a:Lteam/opay/spos/base/api/ObtainPosApi;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/base/spi/IPosStorage;->Companion:Lteam/opay/spos/base/spi/IPosStorage$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/spos/base/spi/IPosStorage$Companion;->a()Lteam/opay/spos/base/spi/IPosStorage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->b:Lteam/opay/spos/base/spi/IPosStorage;

    .line 15
    .line 16
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi$connectionPool$2;->INSTANCE:Lteam/opay/spos/base/api/ObtainPosApi$connectionPool$2;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->c:Lid8;

    .line 23
    .line 24
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi$specialOkHttpClient$2;->INSTANCE:Lteam/opay/spos/base/api/ObtainPosApi$specialOkHttpClient$2;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->d:Lid8;

    .line 31
    .line 32
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi$disableCerPosApiOkHttpClient$2;->INSTANCE:Lteam/opay/spos/base/api/ObtainPosApi$disableCerPosApiOkHttpClient$2;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->e:Lid8;

    .line 39
    .line 40
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

.method public static final synthetic a(Lteam/opay/spos/base/api/ObtainPosApi;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/base/api/ObtainPosApi;->c(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/spos/base/api/ObtainPosApi;)Lokhttp3/ConnectionPool;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/base/api/ObtainPosApi;->h()Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/spos/base/api/ObtainPosApi;Ljava/lang/Class;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x3c

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/spos/base/api/ObtainPosApi;->d(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->b:Lteam/opay/spos/base/spi/IPosStorage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->terminalId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    :cond_1
    const-string v4, "TerminalID"

    .line 18
    .line 19
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->terminalId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object v2, v1

    .line 30
    :goto_1
    if-nez v2, :cond_3

    .line 31
    .line 32
    move-object v2, v3

    .line 33
    :cond_3
    const-string v4, "PosID"

    .line 34
    .line 35
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->posDeviceName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move-object v2, v1

    .line 46
    :goto_2
    if-nez v2, :cond_5

    .line 47
    .line 48
    move-object v2, v3

    .line 49
    :cond_5
    const-string v4, "Device"

    .line 50
    .line 51
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->posDeviceName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_6
    if-nez v1, :cond_7

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_7
    move-object v3, v1

    .line 64
    :goto_3
    const-string v0, "vendor"

    .line 65
    .line 66
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "cls"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lteam/opay/spos/base/api/ObtainPosApi;->g(Ljava/lang/Long;)Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, p2, p1}, Lteam/opay/core/http/HttpFactory;->e(Lokhttp3/OkHttpClient;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->b:Lteam/opay/spos/base/spi/IPosStorage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->appToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method public final g(Ljava/lang/Long;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/api/ObtainPosApi$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lteam/opay/spos/base/api/ObtainPosApi$a;-><init>(Ljava/lang/Long;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lteam/opay/spos/base/api/PosHeaderInterceptor;

    .line 7
    .line 8
    invoke-direct {p1}, Lteam/opay/spos/base/api/PosHeaderInterceptor;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lteam/opay/core/http/Builder;->b(Lokhttp3/Interceptor;)Lteam/opay/core/http/Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "pos_common"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lteam/opay/core/http/HttpFactory;->i(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final h()Lokhttp3/ConnectionPool;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->c:Lid8;

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

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/api/ObtainPosApi;->b:Lteam/opay/spos/base/spi/IPosStorage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->pospToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method
