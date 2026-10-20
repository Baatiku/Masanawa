.class final Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PosPrinter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;->l(Lfzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $worker:Lfzb;

.field final synthetic this$0:Lteam/opay/spos/printer/PosPrinter;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/PosPrinter;Lfzb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->$worker:Lfzb;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->f(Lteam/opay/spos/printer/PosPrinter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v0, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->Companion:Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;

    invoke-virtual {v0}, Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    iget-object v2, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->$worker:Lfzb;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    .line 5
    sget-object v4, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;->Companion:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    invoke-virtual {v4}, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->a()Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    sget-object v5, Lteam/opay/spos/base/internal/PosDeviceProxy;->a:Lteam/opay/spos/base/internal/PosDeviceProxy;

    invoke-virtual {v5}, Lteam/opay/spos/base/internal/PosDeviceProxy;->e()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;->posDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    :cond_1
    invoke-static {v1, v2, v3}, Lteam/opay/spos/printer/PosPrinter;->c(Lteam/opay/spos/printer/PosPrinter;Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v1, v2, v3}, Lteam/opay/spos/printer/PosPrinter;->c(Lteam/opay/spos/printer/PosPrinter;Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    const/4 v1, 0x1

    const v2, -0x186a1

    invoke-static {v0, v1, v2}, Lteam/opay/spos/printer/PosPrinter;->a(Lteam/opay/spos/printer/PosPrinter;II)V

    :cond_5
    return-void
.end method
