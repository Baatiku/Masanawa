.class public final Lteam/opay/core/http/HttpEventListener$Companion;
.super Ljava/lang/Object;
.source "HttpEventFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/http/HttpEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R#\u0010\n\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/http/HttpEventListener$Companion;",
        "",
        "<init>",
        "()V",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
        "logger$delegate",
        "Lid8;",
        "b",
        "()Ljava/util/logging/Logger;",
        "logger",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "httpRequestId",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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
    invoke-direct {p0}, Lteam/opay/core/http/HttpEventListener$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/http/HttpEventListener$Companion;)Ljava/util/logging/Logger;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/HttpEventListener$Companion;->b()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/HttpEventListener;->c()Lid8;

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
    check-cast v0, Ljava/util/logging/Logger;

    .line 10
    .line 11
    return-object v0
.end method
