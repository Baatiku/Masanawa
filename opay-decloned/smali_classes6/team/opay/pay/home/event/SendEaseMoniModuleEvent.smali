.class public final Lteam/opay/pay/home/event/SendEaseMoniModuleEvent;
.super Ljava/lang/Object;
.source "SendEaseMoniModuleEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/home/event/SendEaseMoniModuleEvent;",
        "",
        "Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;",
        "source",
        "",
        "data",
        "<init>",
        "(Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;Ljava/lang/String;)V",
        "a",
        "Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;",
        "getSource",
        "()Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;",
        "b",
        "Ljava/lang/String;",
        "getData",
        "()Ljava/lang/String;",
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
.field public final a:Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/home/event/SendEaseMoniModuleEvent;->a:Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;

    iput-object p2, p0, Lteam/opay/pay/home/event/SendEaseMoniModuleEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 2
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/home/event/SendEaseMoniModuleEvent;-><init>(Lteam/opay/pay/home/event/SendEaseMoniModuleEventSource;Ljava/lang/String;)V

    return-void
.end method
