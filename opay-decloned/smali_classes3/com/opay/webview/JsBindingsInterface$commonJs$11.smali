.class final Lcom/opay/webview/JsBindingsInterface$commonJs$11;
.super Lkotlin/jvm/internal/Lambda;
.source "JsBindingsInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/JsBindingsInterface;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/opay/webview/WebFoundationJsData;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/opay/webview/WebFoundationJsData;",
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
.field final synthetic this$0:Lcom/opay/webview/JsBindingsInterface;


# direct methods
.method public constructor <init>(Lcom/opay/webview/JsBindingsInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/webview/JsBindingsInterface$commonJs$11;->this$0:Lcom/opay/webview/JsBindingsInterface;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/webview/WebFoundationJsData;

    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface$commonJs$11;->invoke(Lcom/opay/webview/WebFoundationJsData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 8
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/opay/webview/JsBindingsInterface$commonJs$11;->this$0:Lcom/opay/webview/JsBindingsInterface;

    .line 3
    sget-object v1, Lteam/opay/pay/oshare/api/OSharePlatform;->Twitter:Lteam/opay/pay/oshare/api/OSharePlatform;

    invoke-static {p1, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->f(Lcom/opay/webview/JsBindingsInterface;Lteam/opay/pay/oshare/api/OSharePlatform;Lorg/json/JSONObject;)Lteam/opay/pay/oshare/api/OShareData;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/opay/webview/JsBindingsInterface;->q()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v2, Lefa;->a:Lefa;

    invoke-virtual {p1}, Lcom/opay/webview/JsBindingsInterface;->q()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lefa;->b(Lefa;Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lteam/opay/pay/oshare/adapter/ShareResultAdapter;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
