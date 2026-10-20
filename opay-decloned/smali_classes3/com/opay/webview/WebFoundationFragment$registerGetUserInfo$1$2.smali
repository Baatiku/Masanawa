.class final synthetic Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1;->invoke(Lcom/opay/webview/WebFoundationJsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "callbackAccessToken(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const-class v3, Lcom/opay/webview/WebFoundationFragment;

    .line 6
    .line 7
    const-string v4, "callbackAccessToken"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;

    invoke-virtual {p0, p1}, Lcom/opay/webview/WebFoundationFragment$registerGetUserInfo$1$2;->invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V
    .locals 1
    .param p1    # Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/opay/webview/WebFoundationFragment;

    invoke-static {v0, p1}, Lcom/opay/webview/WebFoundationFragment;->access$callbackAccessToken(Lcom/opay/webview/WebFoundationFragment;Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;)V

    return-void
.end method
