.class public final Lteam/opay/core/spi/IBuilderDelegate$Companion;
.super Ljava/lang/Object;
.source "IBuilderDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/spi/IBuilderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\n\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/core/spi/IBuilderDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/spi/IBuilderDelegate;",
        "a",
        "()Lteam/opay/core/spi/IBuilderDelegate;",
        "delegate$delegate",
        "Lid8;",
        "b",
        "delegate",
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
    invoke-direct {p0}, Lteam/opay/core/spi/IBuilderDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/spi/IBuilderDelegate$Companion;->b()Lteam/opay/core/spi/IBuilderDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/spi/IBuilderDelegate;->access$getDelegate$delegate$cp()Lid8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/core/spi/IBuilderDelegate;

    .line 10
    .line 11
    return-object v0
.end method
