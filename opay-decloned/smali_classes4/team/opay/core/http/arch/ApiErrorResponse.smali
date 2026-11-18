.class public final Lteam/opay/core/http/arch/ApiErrorResponse;
.super Lteam/opay/core/http/arch/ApiResponse;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lteam/opay/core/http/arch/ApiResponse<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\u0008\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/http/arch/ApiErrorResponse;",
        "T",
        "Lteam/opay/core/http/arch/ApiResponse;",
        "body",
        "Lteam/opay/core/http/arch/ApiError;",
        "apiError",
        "<init>",
        "(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)V",
        "c",
        "Ljava/lang/Object;",
        "d",
        "()Ljava/lang/Object;",
        "Lteam/opay/core/http/arch/ApiError;",
        "()Lteam/opay/core/http/arch/ApiError;",
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
.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/arch/ApiError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/arch/ApiError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lteam/opay/core/http/arch/ApiError;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "apiError"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lteam/opay/core/http/arch/ApiResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/core/http/arch/ApiErrorResponse;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lteam/opay/core/http/arch/ApiErrorResponse;->d:Lteam/opay/core/http/arch/ApiError;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c()Lteam/opay/core/http/arch/ApiError;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/ApiErrorResponse;->d:Lteam/opay/core/http/arch/ApiError;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/ApiErrorResponse;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
