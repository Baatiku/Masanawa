.class final Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;->selectFile(I)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/opay/webview/WebFoundationData;",
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
.field final synthetic $requestCode:I

.field final synthetic this$0:Lcom/opay/webview/WebFoundationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->$requestCode:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-static {v0}, Lcom/opay/webview/WebFoundationFragment;->access$getGenerator(Lcom/opay/webview/WebFoundationFragment;)Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "call_code"

    const-string v2, "H5"

    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "uploadmethod_popup_album_click"

    invoke-interface {v0, v1, v2}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    iget v1, p0, Lcom/opay/webview/WebFoundationFragment$selectFile$1$2;->$requestCode:I

    invoke-static {v0, v1}, Lcom/opay/webview/WebFoundationFragment;->access$pickAlbum(Lcom/opay/webview/WebFoundationFragment;I)V

    return-void
.end method
