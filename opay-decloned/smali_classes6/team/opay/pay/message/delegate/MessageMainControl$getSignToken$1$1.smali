.class final Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageMainControl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/delegate/MessageMainControl;->p(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/message/net/ResultData<",
            "+",
            "Lteam/opay/pay/message/bean/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $req:Lteam/opay/pay/message/bean/TokenRequestV2;

.field final synthetic $successCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/message/net/ResultData<",
            "+",
            "Lteam/opay/pay/message/bean/TokenResponse;",
            ">;>;",
            "Lteam/opay/pay/message/bean/TokenRequestV2;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$req:Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->invoke$lambda-0(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invoke$lambda-0(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/message/net/ResultData;)V
    .locals 3

    .line 1
    const-string v0, "$req"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$successCallback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lzj8;->a:Lzj8;

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/message/net/ResultData;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "omessage"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lzj8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/message/bean/TokenRequestV2;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0, p2}, Lteam/opay/pay/message/delegate/MessageMainControl;->m(Ljava/lang/String;Lteam/opay/pay/message/net/ResultData;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/pay/message/net/ResultData;->b()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lteam/opay/pay/message/bean/TokenResponse;

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/message/bean/TokenResponse;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    :cond_0
    const-string p0, ""

    .line 49
    .line 50
    :cond_1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$req:Lteam/opay/pay/message/bean/TokenRequestV2;

    iget-object v2, p0, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->$successCallback:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lteam/opay/pay/message/delegate/a;

    invoke-direct {v3, v1, v2}, Lteam/opay/pay/message/delegate/a;-><init>(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    return-void
.end method
