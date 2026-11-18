.class final Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PosPrinter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;->m(II)V
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
.field final synthetic $errorCode:I

.field final synthetic $printerResult:I

.field final synthetic this$0:Lteam/opay/spos/printer/PosPrinter;


# direct methods
.method public constructor <init>(ILteam/opay/spos/printer/PosPrinter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$printerResult:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

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
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$printerResult:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const-string v1, ""

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->h(Lteam/opay/spos/printer/PosPrinter;)Lteam/opay/spos/printer/internal/PrinterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/PrinterConfig;->a()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lteam/opay/spos/printer/R$string;->printer_printer_out_of_paper:I

    invoke-static {v0, v3}, Ldt;->a(Landroid/content/Context;I)V

    .line 5
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    invoke-interface {v0, v2, v1, v3}, Lkyb;->a(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lteam/opay/spos/printer/R$string;->printer_state_content_no_paper:I

    invoke-static {v0, v1}, Let;->u(Landroid/content/Context;I)V

    .line 7
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v3}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.stri\u2026r_state_content_no_paper)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    .line 9
    invoke-interface {v0, v2, v1, v3}, Lkyb;->a(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v3}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lteam/opay/spos/printer/R$string;->printer_status_exception:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v1}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.stri\u2026printer_status_exception)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    .line 13
    invoke-interface {v0, v2, v1, v3}, Lkyb;->a(ILjava/lang/String;I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    invoke-interface {v0, v2, v1, v3}, Lkyb;->a(ILjava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lteam/opay/spos/printer/R$string;->printer_status_init_error:I

    invoke-static {v0, v2}, Let;->u(Landroid/content/Context;I)V

    .line 16
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->this$0:Lteam/opay/spos/printer/PosPrinter;

    invoke-static {v3}, Lteam/opay/spos/printer/PosPrinter;->e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026rinter_status_init_error)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;->$errorCode:I

    .line 18
    invoke-interface {v0, v1, v2, v3}, Lkyb;->a(ILjava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method
