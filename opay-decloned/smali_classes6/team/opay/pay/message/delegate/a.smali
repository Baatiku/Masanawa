.class public final synthetic Lteam/opay/pay/message/delegate/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lvfa;


# instance fields
.field public final synthetic a:Lteam/opay/pay/message/bean/TokenRequestV2;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/message/delegate/a;->a:Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/message/delegate/a;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/delegate/a;->a:Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/message/delegate/a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    check-cast p1, Lteam/opay/pay/message/net/ResultData;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;->a(Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/message/net/ResultData;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
