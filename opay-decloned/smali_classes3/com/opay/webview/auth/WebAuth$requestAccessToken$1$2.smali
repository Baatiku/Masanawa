.class final Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WebAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->invoke(Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;)V
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
.field final synthetic $accessCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $loadView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$loadView:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$accessCallback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;

    invoke-virtual {p0, p1}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V
    .locals 2
    .param p1    # Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$loadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$loadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$accessCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
