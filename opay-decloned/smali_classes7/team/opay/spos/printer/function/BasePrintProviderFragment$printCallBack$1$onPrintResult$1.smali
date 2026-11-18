.class final Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePrintProviderFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1;->a(ILjava/lang/String;I)V
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
.field final synthetic $code:I

.field final synthetic $deviceCode:I

.field final synthetic $message:Ljava/lang/String;

.field final synthetic this$0:Lteam/opay/spos/printer/function/BasePrintProviderFragment;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/BasePrintProviderFragment;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->this$0:Lteam/opay/spos/printer/function/BasePrintProviderFragment;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$code:I

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$deviceCode:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$message:Ljava/lang/String;

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
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->this$0:Lteam/opay/spos/printer/function/BasePrintProviderFragment;

    invoke-virtual {v0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintEndListener()Lhm6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$code:I

    iget-object v2, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$message:Ljava/lang/String;

    iget v3, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$deviceCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->this$0:Lteam/opay/spos/printer/function/BasePrintProviderFragment;

    iget v1, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$code:I

    iget v2, p0, Lteam/opay/spos/printer/function/BasePrintProviderFragment$printCallBack$1$onPrintResult$1;->$deviceCode:I

    invoke-virtual {v0, v1, v2}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->finishFunction(II)V

    :goto_0
    return-void
.end method
