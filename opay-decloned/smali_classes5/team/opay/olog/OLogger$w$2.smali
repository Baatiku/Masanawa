.class final Lteam/opay/olog/OLogger$w$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $TAG:Ljava/lang/String;

.field final synthetic $e:Ljava/lang/Throwable;

.field final synthetic $saveToFile:Z

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/olog/OLogger$w$2;->$TAG:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/olog/OLogger$w$2;->$e:Ljava/lang/Throwable;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/olog/OLogger$w$2;->$text:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lteam/opay/olog/OLogger$w$2;->$saveToFile:Z

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/olog/OLogger$w$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    const/4 v0, 0x2

    .line 2
    sget-object v1, Lf6e;->a:Lf6e;

    sget-object v1, Lteam/opay/olog/OLogger;->a:Lteam/opay/olog/OLogger;

    iget-object v2, p0, Lteam/opay/olog/OLogger$w$2;->$e:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lteam/opay/olog/OLogger;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lteam/opay/olog/OLogger$w$2;->$text:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s--->%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    iget-boolean v1, p0, Lteam/opay/olog/OLogger$w$2;->$saveToFile:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
