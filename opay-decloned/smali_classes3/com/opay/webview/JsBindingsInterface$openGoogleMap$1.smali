.class final Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JsBindingsInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/JsBindingsInterface;->openGoogleMap(DD)Z
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
.field final synthetic $lat:D

.field final synthetic $lng:D

.field final synthetic this$0:Lcom/opay/webview/JsBindingsInterface;


# direct methods
.method public constructor <init>(DDLcom/opay/webview/JsBindingsInterface;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->$lat:D

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->$lng:D

    .line 4
    .line 5
    iput-object p5, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

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
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "lat"

    iget-wide v2, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->$lat:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4
    const-string v1, "lng"

    iget-wide v2, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->$lng:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    new-instance v1, Lcom/opay/webview/WebFoundationJsData;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

    invoke-static {v2}, Lcom/opay/webview/JsBindingsInterface;->g(Lcom/opay/webview/JsBindingsInterface;)Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "openGoogleMap"

    invoke-direct {v1, v3, v0, v2}, Lcom/opay/webview/WebFoundationJsData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;->this$0:Lcom/opay/webview/JsBindingsInterface;

    .line 6
    invoke-static {v0, v1}, Lcom/opay/webview/JsBindingsInterface;->d(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V

    return-void
.end method
