.class final Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PosPrinter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;->p(Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V
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
.field final synthetic $delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

.field final synthetic $worker:Lfzb;

.field final synthetic this$0:Lteam/opay/spos/printer/PosPrinter;


# direct methods
.method public constructor <init>(Lfzb;Lteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->$worker:Lfzb;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->$delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->$worker:Lfzb;

    invoke-interface {v0}, Lfzb;->a()V

    .line 3
    new-instance v0, Lteam/opay/spos/printer/utils/BitmapConvertUtil;

    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v1}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v1}, Lteam/opay/spos/printer/PosPrinter;->i(Lteam/opay/spos/printer/PosPrinter;)Lka7;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lka7;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    .line 5
    :goto_0
    iget-object v2, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v2}, Lteam/opay/spos/printer/PosPrinter;->f(Lteam/opay/spos/printer/PosPrinter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 6
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v1}, Lteam/opay/spos/printer/PosPrinter;->f(Lteam/opay/spos/printer/PosPrinter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->f(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->$delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    new-instance v2, Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;

    new-instance v3, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1$1;

    iget-object v4, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-direct {v3, v4, v0}, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1$1;-><init>(Lteam/opay/spos/printer/PosPrinter;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2}, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->printImage(Landroid/graphics/Bitmap;ZLteam/opay/spos/printer/internal/PrintSafeWeakCallback;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v2}, Lteam/opay/spos/printer/PosPrinter;->f(Lteam/opay/spos/printer/PosPrinter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lteam/opay/spos/printer/utils/BitmapConvertUtil;->g(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    iget-object v2, p0, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;->$delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    const-string v3, "bitmaps"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lteam/opay/spos/printer/PosPrinter;->j(Lteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method
