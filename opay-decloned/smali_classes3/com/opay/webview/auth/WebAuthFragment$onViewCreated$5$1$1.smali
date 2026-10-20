.class final Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebAuthFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/auth/WebAuthFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/opay/webview/auth/WebAuthFragment;


# direct methods
.method public constructor <init>(Lcom/opay/webview/auth/WebAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 5

    .line 2
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {p1}, Lcom/opay/webview/auth/WebAuthFragment;->E(Lcom/opay/webview/auth/WebAuthFragment;)Lcom/opay/webview/auth/WebAuth;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v2}, Lcom/opay/webview/auth/WebAuthFragment;->K()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v3}, Lcom/opay/webview/auth/WebAuthFragment;->H()Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    move-object v3, v0

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v4}, Lcom/opay/webview/auth/WebAuthFragment;->J()Lcom/opay/webview/net/TokenRequest;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/opay/webview/net/TokenRequest;->b()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 7
    :goto_1
    const-string v1, "confirm_allow_click"

    .line 8
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {p1}, Lcom/opay/webview/auth/WebAuthFragment;->F(Lcom/opay/webview/auth/WebAuthFragment;)V

    goto :goto_4

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {p1}, Lcom/opay/webview/auth/WebAuthFragment;->E(Lcom/opay/webview/auth/WebAuthFragment;)Lcom/opay/webview/auth/WebAuth;

    move-result-object p1

    .line 11
    iget-object v2, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v2}, Lcom/opay/webview/auth/WebAuthFragment;->K()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v3}, Lcom/opay/webview/auth/WebAuthFragment;->H()Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-nez v3, :cond_6

    move-object v3, v0

    .line 13
    :cond_6
    iget-object v4, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v4}, Lcom/opay/webview/auth/WebAuthFragment;->J()Lcom/opay/webview/net/TokenRequest;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/opay/webview/net/TokenRequest;->b()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 14
    :goto_3
    const-string v1, "confirm_cancel_click"

    .line 15
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$onViewCreated$5$1$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {p1}, Lcom/opay/webview/auth/WebAuthFragment;->D(Lcom/opay/webview/auth/WebAuthFragment;)V

    :goto_4
    return-void
.end method
