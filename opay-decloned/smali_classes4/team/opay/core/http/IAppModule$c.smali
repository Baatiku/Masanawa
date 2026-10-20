.class public final Lteam/opay/core/http/IAppModule$c;
.super Lteam/opay/core/http/Builder;
.source "IAppModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/http/IAppModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/core/http/IAppModule$c",
        "Lteam/opay/core/http/Builder;",
        "",
        "h",
        "()I",
        "Lokhttp3/ConnectionPool;",
        "f",
        "()Lokhttp3/ConnectionPool;",
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
.field public final synthetic c:Lteam/opay/core/http/IAppModule;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/IAppModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/http/IAppModule$c;->c:Lteam/opay/core/http/IAppModule;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/core/http/Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public f()Lokhttp3/ConnectionPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule$c;->c:Lteam/opay/core/http/IAppModule;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/http/IAppModule;->f(Lteam/opay/core/http/IAppModule;)Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/IAppModule$c;->c:Lteam/opay/core/http/IAppModule;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/http/IAppModule;->g(Lteam/opay/core/http/IAppModule;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
