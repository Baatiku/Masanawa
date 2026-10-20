.class final Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OPayTicketComposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/OPayTicketComposer;->b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V
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
.field final synthetic $content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $printerCallback:Lkyb;

.field final synthetic $printerConfig:Lteam/opay/spos/printer/internal/PrinterConfig;

.field final synthetic this$0:Lteam/opay/spos/printer/OPayTicketComposer;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/OPayTicketComposer;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/spos/printer/OPayTicketComposer;",
            "Lkyb;",
            "Lteam/opay/spos/printer/internal/PrinterConfig;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$printerCallback:Lkyb;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$printerConfig:Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$content:Ljava/util/List;

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
    invoke-virtual {p0}, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer;

    invoke-static {v0}, Lteam/opay/spos/printer/OPayTicketComposer;->a(Lteam/opay/spos/printer/OPayTicketComposer;)Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lteam/opay/spos/printer/PosPrinter;

    .line 4
    iget-object v1, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer;

    invoke-static {v1}, Lteam/opay/spos/printer/OPayTicketComposer;->a(Lteam/opay/spos/printer/OPayTicketComposer;)Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "builder.context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$printerCallback:Lkyb;

    .line 6
    iget-object v3, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$printerConfig:Lteam/opay/spos/printer/internal/PrinterConfig;

    if-nez v3, :cond_0

    new-instance v3, Lteam/opay/spos/printer/internal/PrinterConfig;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v5}, Lteam/opay/spos/printer/internal/PrinterConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    :cond_0
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/spos/printer/PosPrinter;-><init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V

    .line 8
    iget-object v1, p0, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;->$content:Ljava/util/List;

    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/PosPrinter;->v(Ljava/util/List;)V

    :cond_1
    return-void
.end method
