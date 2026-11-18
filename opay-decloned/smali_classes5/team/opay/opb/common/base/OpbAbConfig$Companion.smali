.class public final Lteam/opay/opb/common/base/OpbAbConfig$Companion;
.super Ljava/lang/Object;
.source "OpbAbConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/common/base/OpbAbConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u0008\u001a\u00028\u0001\"\u000e\u0008\u0001\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006H\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ5\u0010\u000c\u001a\u00028\u0001\"\u000e\u0008\u0001\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/opb/common/base/OpbAbConfig$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/opb/common/base/OpbAbConfig;",
        "T",
        "Ljava/lang/Class;",
        "clazz",
        "a",
        "(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;",
        "",
        "durationMs",
        "b",
        "(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;",
        "common-base_release"
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
    invoke-direct {p0}, Lteam/opay/opb/common/base/OpbAbConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lteam/opay/opb/common/base/OpbAbConfig<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/32 v0, 0xea60

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lteam/opay/opb/common/base/OpbAbConfig;->getOpbAbConfig(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final b(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lteam/opay/opb/common/base/OpbAbConfig<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/opb/common/base/ABConfigCenter;->a:Lteam/opay/opb/common/base/ABConfigCenter;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/opb/common/base/ABConfigCenter;->d(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
