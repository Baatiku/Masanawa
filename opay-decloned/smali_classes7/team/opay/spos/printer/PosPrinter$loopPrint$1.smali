.class final Lteam/opay/spos/printer/PosPrinter$loopPrint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PosPrinter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;->s(Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "code",
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $bitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $isLast:Z

.field final synthetic this$0:Lteam/opay/spos/printer/PosPrinter;


# direct methods
.method public constructor <init>(ZLteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lteam/opay/spos/printer/PosPrinter;",
            "Lteam/opay/spos/printer/delegate/OPrinterDelegate;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$isLast:Z

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$bitmaps:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$isLast:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    iget-object p2, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$delegate:Lteam/opay/spos/printer/delegate/OPrinterDelegate;

    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$bitmaps:Ljava/util/List;

    invoke-static {p1, p2, v1, v0}, Lteam/opay/spos/printer/PosPrinter;->j(Lteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0, p1, p2}, Lteam/opay/spos/printer/PosPrinter;->a(Lteam/opay/spos/printer/PosPrinter;II)V

    .line 5
    :goto_1
    iget-object p1, p0, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
