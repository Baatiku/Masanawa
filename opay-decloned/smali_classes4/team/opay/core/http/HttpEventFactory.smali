.class public final Lteam/opay/core/http/HttpEventFactory;
.super Ljava/lang/Object;
.source "HttpEventFactory.kt"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/core/http/HttpEventFactory;",
        "Lokhttp3/EventListener$Factory;",
        "<init>",
        "()V",
        "create",
        "Lokhttp3/EventListener;",
        "call",
        "Lokhttp3/Call;",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/ab/HttpABConfig$Companion;->h()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lteam/opay/core/http/HttpEventListener;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v1, v0, v1}, Lteam/opay/core/http/HttpEventListener;-><init>(Lteam/opay/core/biz/rbi/HttpEventPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lteam/opay/core/http/EmptyHttpEventListener;

    .line 23
    .line 24
    invoke-direct {p1}, Lteam/opay/core/http/EmptyHttpEventListener;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object p1
.end method
