.class final Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JsBindingsInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/JsBindingsInterface;->k(Lcom/opay/webview/WebFoundationJsData;)V
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
.field final synthetic $contains:Z

.field final synthetic $webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

.field final synthetic this$0:Lcom/opay/webview/JsBindingsInterface;


# direct methods
.method public constructor <init>(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->$contains:Z

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
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

    iget-object v1, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    iget-boolean v2, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->$contains:Z

    invoke-static {v0, v1, v2}, Lcom/opay/webview/JsBindingsInterface;->c(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;Z)V

    .line 3
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

    iget-object v1, p0, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    invoke-static {v0, v1}, Lcom/opay/webview/JsBindingsInterface;->e(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V

    return-void
.end method
