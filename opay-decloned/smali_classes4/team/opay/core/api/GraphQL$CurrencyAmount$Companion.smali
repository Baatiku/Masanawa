.class public final Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL$CurrencyAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "a",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "c",
        "",
        "amount",
        "b",
        "(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;",
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
    invoke-direct {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    const-string v2, "NGN"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 13
    .line 14
    const-string v1, "NGN"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final c()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    const-string v1, "2147483647"

    .line 4
    .line 5
    const-string v2, "NGN"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
