.class public interface abstract Lteam/opay/core/spi/INetTransport;
.super Ljava/lang/Object;
.source "INetTransport.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/spi/INetTransport$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008g\u0018\u0000 \u00082\u00020\u0001:\u0001\tJ\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/core/spi/INetTransport;",
        "",
        "Lokhttp3/Interceptor;",
        "getInterceptor",
        "()Lokhttp3/Interceptor;",
        "Lokhttp3/Call$Factory;",
        "getCallFactory",
        "()Lokhttp3/Call$Factory;",
        "Companion",
        "a",
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

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/core/spi/INetTransport$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/spi/INetTransport$a;->a:Lteam/opay/core/spi/INetTransport$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/core/spi/INetTransport;->Companion:Lteam/opay/core/spi/INetTransport$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getCallFactory()Lokhttp3/Call$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getInterceptor()Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
