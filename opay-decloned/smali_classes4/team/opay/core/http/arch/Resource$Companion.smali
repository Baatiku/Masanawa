.class public final Lteam/opay/core/http/arch/Resource$Companion;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/http/arch/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J2\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0008\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/http/arch/Resource$Companion;",
        "",
        "<init>",
        "()V",
        "T",
        "data",
        "Lteam/opay/core/http/arch/Resource;",
        "c",
        "(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/core/http/arch/ApiError;",
        "error",
        "a",
        "(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/Resource;",
        "b",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/http/arch/Resource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)Lteam/opay/core/http/arch/Resource;
    .locals 2
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
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lteam/opay/core/http/arch/ApiError;",
            ")",
            "Lteam/opay/core/http/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/http/arch/Resource;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/http/arch/Resource;-><init>(Lteam/opay/core/http/arch/Status;Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lteam/opay/core/http/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/http/arch/Resource;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lteam/opay/core/http/arch/Resource;-><init>(Lteam/opay/core/http/arch/Status;Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lteam/opay/core/http/arch/Resource;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lteam/opay/core/http/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/http/arch/Resource;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lteam/opay/core/http/arch/Resource;-><init>(Lteam/opay/core/http/arch/Status;Ljava/lang/Object;Lteam/opay/core/http/arch/ApiError;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
