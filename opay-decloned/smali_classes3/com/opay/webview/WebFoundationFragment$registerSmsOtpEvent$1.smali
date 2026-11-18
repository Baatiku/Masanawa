.class final Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;->registerSmsOtpEvent()V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

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

    invoke-virtual {p0, p1}, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;->invoke(Lcom/opay/webview/WebFoundationJsData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 6
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-static {v0}, Lcom/opay/webview/WebFoundationFragment;->access$unRegisterSmsReceiver(Lcom/opay/webview/WebFoundationFragment;)V

    .line 3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "sms"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v3, "otpChannel"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "json.optString(\"otpChannel\", OtpChannel.SMS)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    sget-object v2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    const-class v3, Lteam/opay/swarmfoundation/otp/ISmsOtpInterface;

    invoke-virtual {v2, v3}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/swarmfoundation/otp/ISmsOtpInterface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1$1;

    iget-object v5, p0, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-direct {v4, v0, p1, v5}, Lcom/opay/webview/WebFoundationFragment$registerSmsOtpEvent$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/opay/webview/WebFoundationJsData;Lcom/opay/webview/WebFoundationFragment;)V

    invoke-interface {v2, v3, v4}, Lteam/opay/swarmfoundation/otp/ISmsOtpInterface;->registerMsmReceiver(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_1
    invoke-static {v1, p1}, Lcom/opay/webview/WebFoundationFragment;->access$setSmsReceiver$p(Lcom/opay/webview/WebFoundationFragment;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
