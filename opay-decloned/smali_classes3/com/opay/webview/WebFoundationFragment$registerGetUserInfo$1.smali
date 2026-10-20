.class final Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;->registerGetUserInfo()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/opay/webview/WebFoundationData;",
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
.field final synthetic this$0:Lcom/opay/webview/WebFoundationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

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

    invoke-virtual {p0, p1}, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->invoke(Lcom/opay/webview/WebFoundationJsData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 9
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-static {v0}, Lcom/opay/webview/WebFoundationFragment;->access$isAuth2WhiteListDomain(Lcom/opay/webview/WebFoundationFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-static {p1}, Lcom/opay/webview/WebFoundationFragment;->access$getGenerator(Lcom/opay/webview/WebFoundationFragment;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object p1

    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$1$1;

    invoke-direct {v2, v0}, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$1$1;-><init>(Lcom/opay/webview/WebFoundationFragment;)V

    invoke-interface {p1, v1, v2}, Lteam/opay/swarmfoundation/data/IFunAttrMap;->attributeMap(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v3, Lcom/opay/webview/auth/WebAuth;

    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/opay/webview/auth/WebAuth;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    sget v1, Lcom/opay/webview/R$id;->loadingContainerLayout:I

    invoke-virtual {v0, v1}, Lcom/opay/webview/WebFoundationFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const-string v0, "loadingContainerLayout"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-static {v0}, Lcom/opay/webview/WebFoundationFragment;->access$getWebUrl$p(Lcom/opay/webview/WebFoundationFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    move-object v6, v0

    .line 8
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 9
    new-instance v8, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$2;

    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-direct {v8, v0}, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$2;-><init>(Ljava/lang/Object;)V

    move-object v4, p1

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcom/opay/webview/auth/WebAuth;->k(Lcom/opay/webview/WebFoundationJsData;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    :goto_1
    return-void
.end method
