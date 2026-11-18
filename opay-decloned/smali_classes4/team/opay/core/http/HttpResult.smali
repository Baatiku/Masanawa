.class public abstract Lteam/opay/core/http/HttpResult;
.super Ljava/lang/Object;
.source "SuspendResponse.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/HttpResult$ApiResult;,
        Lteam/opay/core/http/HttpResult$Companion;,
        Lteam/opay/core/http/HttpResult$NetworkError;,
        Lteam/opay/core/http/HttpResult$Success;,
        Lteam/opay/core/http/HttpResult$UnknownError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u0017*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0005\u0013\u0014\u0015\u0016\u0017B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\r\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0012\u0010\t\u001a\u00020\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\u0004\u0018\u0019\u001a\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/core/http/HttpResult;",
        "T",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "isSuccess",
        "",
        "()Z",
        "isFailure",
        "meta",
        "Lteam/opay/core/http/ResultMeta;",
        "getMeta",
        "()Lteam/opay/core/http/ResultMeta;",
        "getOrNull",
        "()Ljava/lang/Object;",
        "getApiError",
        "Lteam/opay/core/http/arch/ApiError;",
        "exceptionOrNull",
        "",
        "Success",
        "ApiResult",
        "NetworkError",
        "UnknownError",
        "Companion",
        "Lteam/opay/core/http/HttpResult$ApiResult;",
        "Lteam/opay/core/http/HttpResult$NetworkError;",
        "Lteam/opay/core/http/HttpResult$Success;",
        "Lteam/opay/core/http/HttpResult$UnknownError;",
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
.field public static final Companion:Lteam/opay/core/http/HttpResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/http/HttpResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/http/HttpResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/http/HttpResult;->Companion:Lteam/opay/core/http/HttpResult$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/http/HttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionOrNull()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getApiError()Lteam/opay/core/http/arch/ApiError;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract getMeta()Lteam/opay/core/http/ResultMeta;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getOrNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lteam/opay/core/http/HttpResult$Success;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lteam/opay/core/http/HttpResult$Success;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    return-object v1
.end method

.method public final isFailure()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lteam/opay/core/http/HttpResult$Success;

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lteam/opay/core/http/HttpResult$Success;

    .line 2
    .line 3
    return v0
.end method
