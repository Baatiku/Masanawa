.class public final synthetic Lcom/opay/webview/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/opay/webview/JsBindingsInterface;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/opay/webview/JsBindingsInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/webview/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/webview/b;->b:Lcom/opay/webview/JsBindingsInterface;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/webview/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/webview/b;->b:Lcom/opay/webview/JsBindingsInterface;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/webview/JsBindingsInterface$commonJs$12;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/opay/webview/JsBindingsInterface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
