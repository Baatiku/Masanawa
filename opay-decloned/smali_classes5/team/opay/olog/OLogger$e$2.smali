.class final Lteam/opay/olog/OLogger$e$2;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/olog/OLogger$e$2;->$TAG:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/olog/OLogger$e$2;->$text:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/olog/OLogger$e$2;->$e:Ljava/lang/Throwable;

    .line 6
    .line 7
    iput-boolean p4, p0, Lteam/opay/olog/OLogger$e$2;->$saveToFile:Z

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
    invoke-virtual {p0}, Lteam/opay/olog/OLogger$e$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    const-string v0, "e: "

    iget-object v1, p0, Lteam/opay/olog/OLogger$e$2;->$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    iget-boolean v1, p0, Lteam/opay/olog/OLogger$e$2;->$saveToFile:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
