.class public final Lteam/opay/pay/home/event/CardPageRefreshEvent;
.super Ljava/lang/Object;
.source "CardPageRefreshEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/home/event/CardPageRefreshEvent;",
        "",
        "Lteam/opay/core/card/RefreshCardPageData;",
        "refreshCardPageData",
        "<init>",
        "(Lteam/opay/core/card/RefreshCardPageData;)V",
        "a",
        "Lteam/opay/core/card/RefreshCardPageData;",
        "()Lteam/opay/core/card/RefreshCardPageData;",
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


# instance fields
.field public final a:Lteam/opay/core/card/RefreshCardPageData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/card/RefreshCardPageData;)V
    .locals 1
    .param p1    # Lteam/opay/core/card/RefreshCardPageData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "refreshCardPageData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/event/CardPageRefreshEvent;->a:Lteam/opay/core/card/RefreshCardPageData;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/card/RefreshCardPageData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/event/CardPageRefreshEvent;->a:Lteam/opay/core/card/RefreshCardPageData;

    .line 2
    .line 3
    return-object v0
.end method
