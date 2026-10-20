.class final Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/auth/WebAuth;->l(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;",
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
        "authRsp",
        "Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;",
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

.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $loadView:Landroid/view/View;

.field final synthetic $seckey:Ljava/lang/String;

.field final synthetic $webUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/opay/webview/auth/WebAuth;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/opay/webview/auth/WebAuth;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/opay/webview/auth/WebAuth;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$loadView:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$appId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$webUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$seckey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuth;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$accessCallback:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;

    invoke-virtual {p0, p1}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->invoke(Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;)V
    .locals 13
    .param p1    # Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$loadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$loadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_b

    .line 4
    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$appId:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$webUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v0

    .line 7
    :goto_1
    iget-object v6, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$seckey:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v7, v0

    .line 9
    :goto_2
    invoke-virtual {p1}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->b()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_5

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 12
    check-cast v8, Lcom/opay/webview/net/AuthScope;

    .line 13
    invoke-virtual {v8}, Lcom/opay/webview/net/AuthScope;->b()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v8, v1

    .line 14
    :cond_4
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v2, v12

    :cond_6
    if-nez v2, :cond_7

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_7
    move-object v8, v2

    .line 16
    :goto_4
    new-instance v0, Lcom/opay/webview/net/TokenRequest;

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/opay/webview/net/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    invoke-virtual {p1}, Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;->g()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    iget-object v1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-ne v1, v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_5
    return-void

    .line 19
    :cond_9
    iget-object v1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuth;

    iget-object v2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$webUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$seckey:Ljava/lang/String;

    const-string v5, "pop_show"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/opay/webview/auth/WebAuthFragment;

    invoke-direct {v1}, Lcom/opay/webview/auth/WebAuthFragment;-><init>()V

    iget-object v2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$webUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$accessCallback:Lkotlin/jvm/functions/Function1;

    .line 21
    invoke-virtual {v1, v2}, Lcom/opay/webview/auth/WebAuthFragment;->T(Ljava/lang/String;)V

    .line 22
    new-instance v2, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$1$1;

    invoke-direct {v2, v4}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lcom/opay/webview/auth/WebAuthFragment;->R(Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {v1, p1}, Lcom/opay/webview/auth/WebAuthFragment;->Q(Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/opay/webview/auth/WebAuthFragment;->S(Lcom/opay/webview/net/TokenRequest;)V

    if-eqz v3, :cond_c

    .line 25
    invoke-static {v3}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance v0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$1$2;

    invoke-direct {v0, v1, v3, v12}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$1$2;-><init>(Lcom/opay/webview/auth/WebAuthFragment;Landroidx/fragment/app/FragmentActivity;Ljr2;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleCoroutineScope;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/l;

    goto :goto_6

    .line 26
    :cond_a
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuth;

    iget-object v1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$webUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$seckey:Ljava/lang/String;

    const-string v4, "pop_ignore"

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$loadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->this$0:Lcom/opay/webview/auth/WebAuth;

    new-instance v1, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;

    iget-object v2, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$loadView:Landroid/view/View;

    iget-object v3, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$accessCallback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1$2;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/opay/webview/auth/WebAuth;->i(Lcom/opay/webview/net/TokenRequest;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_6
    return-void
.end method
