.class public final Lteam/opay/spos/printer/internal/PrintActionDispatch;
.super Ljava/lang/Object;
.source "PrintActionDispatch.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cR\u001b\u0010\u0014\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/PrintActionDispatch;",
        "",
        "<init>",
        "()V",
        "",
        "orderNo",
        "",
        "f",
        "(Ljava/lang/String;)V",
        "Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "posPrintFinishInfo",
        "c",
        "(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V",
        "e",
        "a",
        "b",
        "Lteam/opay/spos/printer/internal/PrintFinishDispatcher;",
        "Lid8;",
        "d",
        "()Lteam/opay/spos/printer/internal/PrintFinishDispatcher;",
        "dispatcher",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/spos/printer/internal/PrintActionDispatch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/internal/PrintActionDispatch;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/internal/PrintActionDispatch;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a:Lteam/opay/spos/printer/internal/PrintActionDispatch;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/printer/internal/PrintActionDispatch$dispatcher$2;->INSTANCE:Lteam/opay/spos/printer/internal/PrintActionDispatch$dispatcher$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/printer/internal/PrintActionDispatch;->b:Lid8;

    .line 15
    .line 16
    return-void
.end method

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
.method public a(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "posPrintFinishInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->d()Lteam/opay/spos/printer/internal/PrintFinishDispatcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/spos/printer/internal/PrintFinishDispatcher;->a(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "posPrintFinishInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->d()Lteam/opay/spos/printer/internal/PrintFinishDispatcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/spos/printer/internal/PrintFinishDispatcher;->b(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .locals 2
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "posPrintFinishInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->Companion:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->firstPrintSuccess(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final d()Lteam/opay/spos/printer/internal/PrintFinishDispatcher;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintActionDispatch;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/printer/internal/PrintFinishDispatcher;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .locals 2
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "posPrintFinishInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->Companion:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->printFinish(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->b(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->Companion:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->startPrint(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
