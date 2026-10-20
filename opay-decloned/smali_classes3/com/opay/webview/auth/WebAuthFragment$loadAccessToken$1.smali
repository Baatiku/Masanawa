.class final Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebAuthFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/auth/WebAuthFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "tokenRsp",
        "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
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
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

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
    check-cast p1, Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;

    invoke-virtual {p0, p1}, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V
    .locals 6
    .param p1    # Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    sget v1, Lcom/opay/webview/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Lcom/opay/webview/auth/WebAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 5
    iget-object v2, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {v2}, Lcom/opay/webview/auth/WebAuthFragment;->E(Lcom/opay/webview/auth/WebAuthFragment;)Lcom/opay/webview/auth/WebAuth;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v3}, Lcom/opay/webview/auth/WebAuthFragment;->K()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v4}, Lcom/opay/webview/auth/WebAuthFragment;->H()Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_3

    move-object v4, v0

    .line 8
    :cond_3
    iget-object v5, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v5}, Lcom/opay/webview/auth/WebAuthFragment;->J()Lcom/opay/webview/net/TokenRequest;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/opay/webview/net/TokenRequest;->b()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 9
    :goto_2
    const-string v1, "auth_result_ok"

    .line 10
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v0}, Lcom/opay/webview/auth/WebAuthFragment;->I()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_5

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-static {p1}, Lcom/opay/webview/auth/WebAuthFragment;->E(Lcom/opay/webview/auth/WebAuthFragment;)Lcom/opay/webview/auth/WebAuth;

    move-result-object p1

    .line 14
    iget-object v2, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v2}, Lcom/opay/webview/auth/WebAuthFragment;->K()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v3}, Lcom/opay/webview/auth/WebAuthFragment;->H()Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v1

    :goto_3
    if-nez v3, :cond_9

    move-object v3, v0

    .line 16
    :cond_9
    iget-object v4, p0, Lcom/opay/webview/auth/WebAuthFragment$loadAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuthFragment;

    invoke-virtual {v4}, Lcom/opay/webview/auth/WebAuthFragment;->J()Lcom/opay/webview/net/TokenRequest;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/opay/webview/net/TokenRequest;->b()Ljava/lang/String;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move-object v0, v1

    .line 17
    :goto_4
    const-string v1, "auth_result_error"

    .line 18
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method
