.class public final Lteam/opay/core/biz/rbi/HttpEventPool;
.super Ljava/lang/Object;
.source "HttpEventPool.kt"

# interfaces
.implements Lw87;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/biz/rbi/HttpEventPool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR0\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u000ej\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006`\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/biz/rbi/HttpEventPool;",
        "Lw87;",
        "<init>",
        "()V",
        "",
        "requestId",
        "Lteam/opay/core/biz/rbi/HttpTrace;",
        "d",
        "(Ljava/lang/String;)Lteam/opay/core/biz/rbi/HttpTrace;",
        "",
        "report",
        "",
        "a",
        "(Ljava/lang/String;Z)V",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "httpTraceMap",
        "b",
        "Companion",
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


# static fields
.field public static final b:Lteam/opay/core/biz/rbi/HttpEventPool$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile c:Lteam/opay/core/biz/rbi/HttpEventPool;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/core/biz/rbi/HttpTrace;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/biz/rbi/HttpEventPool$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/biz/rbi/HttpEventPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/biz/rbi/HttpEventPool;->b:Lteam/opay/core/biz/rbi/HttpEventPool$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/core/biz/rbi/HttpEventPool;->a:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/biz/rbi/HttpEventPool;-><init>()V

    return-void
.end method

.method public static final synthetic b()Lteam/opay/core/biz/rbi/HttpEventPool;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/biz/rbi/HttpEventPool;->c:Lteam/opay/core/biz/rbi/HttpEventPool;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lteam/opay/core/biz/rbi/HttpEventPool;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/biz/rbi/HttpEventPool;->c:Lteam/opay/core/biz/rbi/HttpEventPool;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "requestId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/core/biz/rbi/HttpEventPool;->d(Ljava/lang/String;)Lteam/opay/core/biz/rbi/HttpTrace;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    sget-object p2, Lf67;->a:Lf67;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/biz/rbi/HttpTrace;->b()Lokhttp3/HttpUrl;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2, v1}, Lf67;->c(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    sget-object p2, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lteam/opay/core/biz/rbi/HttpTrack;->s(Lteam/opay/core/biz/rbi/HttpTrace;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;->a()Lteam/opay/core/biz/rbi/HttpTrack;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, v0}, Lteam/opay/core/biz/rbi/HttpTrack;->t(Lteam/opay/core/biz/rbi/HttpTrace;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p2, p0, Lteam/opay/core/biz/rbi/HttpEventPool;->a:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public d(Ljava/lang/String;)Lteam/opay/core/biz/rbi/HttpTrace;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    const-string v0, "requestId"

    .line 4
    .line 5
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v14, p0

    .line 9
    .line 10
    iget-object v15, v14, Lteam/opay/core/biz/rbi/HttpEventPool;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v12, Lteam/opay/core/biz/rbi/HttpTrace;

    .line 19
    .line 20
    const/16 v11, 0x1fe

    .line 21
    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    move-object v0, v12

    .line 34
    move-object/from16 v1, p1

    .line 35
    .line 36
    move-object v14, v12

    .line 37
    move-object/from16 v12, v16

    .line 38
    .line 39
    invoke-direct/range {v0 .. v12}, Lteam/opay/core/biz/rbi/HttpTrace;-><init>(Ljava/lang/String;JLokhttp3/HttpUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-object v0, v14

    .line 46
    :cond_0
    check-cast v0, Lteam/opay/core/biz/rbi/HttpTrace;

    .line 47
    .line 48
    return-object v0
.end method
