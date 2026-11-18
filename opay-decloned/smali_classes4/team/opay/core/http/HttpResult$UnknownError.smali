.class public final Lteam/opay/core/http/HttpResult$UnknownError;
.super Lteam/opay/core/http/HttpResult;
.source "SuspendResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/http/HttpResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\t\u0010\u0013\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/core/http/HttpResult$UnknownError;",
        "Lteam/opay/core/http/HttpResult;",
        "",
        "t",
        "",
        "meta",
        "Lteam/opay/core/http/ResultMeta;",
        "<init>",
        "(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)V",
        "(Ljava/lang/Throwable;)V",
        "getT",
        "()Ljava/lang/Throwable;",
        "getMeta",
        "()Lteam/opay/core/http/ResultMeta;",
        "getApiError",
        "Lteam/opay/core/http/arch/ApiError;",
        "exceptionOrNull",
        "toString",
        "",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final meta:Lteam/opay/core/http/ResultMeta;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lteam/opay/core/http/ResultMeta;->e:Lteam/opay/core/http/ResultMeta$Companion;

    invoke-virtual {v0}, Lteam/opay/core/http/ResultMeta$Companion;->a()Lteam/opay/core/http/ResultMeta;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lteam/opay/core/http/HttpResult$UnknownError;-><init>(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/ResultMeta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lteam/opay/core/http/HttpResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    iput-object p2, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/http/HttpResult$UnknownError;Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;ILjava/lang/Object;)Lteam/opay/core/http/HttpResult$UnknownError;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/http/HttpResult$UnknownError;->copy(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)Lteam/opay/core/http/HttpResult$UnknownError;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/http/ResultMeta;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)Lteam/opay/core/http/HttpResult$UnknownError;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/ResultMeta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "meta"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/http/HttpResult$UnknownError;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lteam/opay/core/http/HttpResult$UnknownError;-><init>(Ljava/lang/Throwable;Lteam/opay/core/http/ResultMeta;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/core/http/HttpResult$UnknownError;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/core/http/HttpResult$UnknownError;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 25
    .line 26
    iget-object p1, p1, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public exceptionOrNull()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApiError()Lteam/opay/core/http/arch/ApiError;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-static {v0}, Lo47;->b(Ljava/lang/Throwable;)Lteam/opay/core/http/arch/HttpException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lteam/opay/core/http/arch/ApiError;

    .line 8
    .line 9
    invoke-static {v0}, Lo47;->a(Lteam/opay/core/http/arch/HttpException;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/http/arch/HttpException;->getHttpCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Lteam/opay/core/http/arch/HttpException;->getApiCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Lteam/opay/core/common/base/ErrorType;->OTHER:Lteam/opay/core/common/base/ErrorType;

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, v0, v4}, Lteam/opay/core/http/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;Lteam/opay/core/common/base/ErrorType;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getMeta()Lteam/opay/core/http/ResultMeta;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getT()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/http/HttpResult$UnknownError;->meta:Lteam/opay/core/http/ResultMeta;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/http/ResultMeta;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpResult$UnknownError;->t:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "UnknownError(message:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ")"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
