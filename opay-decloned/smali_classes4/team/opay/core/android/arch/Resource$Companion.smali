.class public final Lteam/opay/core/android/arch/Resource$Companion;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/android/arch/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J2\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ8\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u00012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\r\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J*\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u0006\u0008\u0002\u0018\u00018\u00010\u0006\"\u0004\u0008\u0001\u0010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0008\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/core/android/arch/Resource$Companion;",
        "",
        "<init>",
        "()V",
        "T",
        "data",
        "Lteam/opay/core/android/arch/Resource;",
        "d",
        "(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/android/arch/ResourceError;",
        "error",
        "b",
        "(Ljava/lang/Object;Lteam/opay/core/android/arch/ResourceError;)Lteam/opay/core/android/arch/Resource;",
        "",
        "errors",
        "a",
        "(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/Resource;",
        "c",
        "sdk_release"
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
    invoke-direct {p0}, Lteam/opay/core/android/arch/Resource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/Resource;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List<",
            "Lteam/opay/core/android/arch/ResourceError;",
            ">;)",
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "errors"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/Resource;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/android/arch/Resource;-><init>(Lteam/opay/core/android/arch/Status;Ljava/lang/Object;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lteam/opay/core/android/arch/ResourceError;)Lteam/opay/core/android/arch/Resource;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/ResourceError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lteam/opay/core/android/arch/ResourceError;",
            ")",
            "Lteam/opay/core/android/arch/Resource<",
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
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/Resource$Companion;->a(Ljava/lang/Object;Ljava/util/List;)Lteam/opay/core/android/arch/Resource;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;
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
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/Resource;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, p1, v2}, Lteam/opay/core/android/arch/Resource;-><init>(Lteam/opay/core/android/arch/Status;Ljava/lang/Object;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lteam/opay/core/android/arch/Resource;
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
            "Lteam/opay/core/android/arch/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/Resource;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, p1, v2}, Lteam/opay/core/android/arch/Resource;-><init>(Lteam/opay/core/android/arch/Status;Ljava/lang/Object;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
