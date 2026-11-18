.class public final Lcom/opay/team/newhome/home/NewPayFragmentV2$q;
.super Lteam/opay/pay/websocket/IWsMessageDelegate;
.source "NewPayFragmentV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/websocket/IWsMessageDelegate<",
        "Lteam/opay/pay/home/websocket/WsEmpty;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/opay/team/newhome/home/NewPayFragmentV2$q",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lteam/opay/pay/home/websocket/WsEmpty;",
        "",
        "a",
        "()Ljava/lang/String;",
        "",
        "c",
        "()Z",
        "data",
        "",
        "f",
        "(Lteam/opay/pay/home/websocket/WsEmpty;)V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/home/NewPayFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$q;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/websocket/IWsMessageDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ws_get_voucher_success_event"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/websocket/WsEmpty;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2$q;->f(Lteam/opay/pay/home/websocket/WsEmpty;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lteam/opay/pay/home/websocket/WsEmpty;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$q;->a:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->w0()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
