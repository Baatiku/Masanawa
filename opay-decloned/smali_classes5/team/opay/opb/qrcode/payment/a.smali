.class public final synthetic Lteam/opay/opb/qrcode/payment/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

.field public final synthetic b:Lteam/opay/opb/qrcode/api/QueryFeeReq;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/a;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/opb/qrcode/payment/a;->b:Lteam/opay/opb/qrcode/api/QueryFeeReq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/a;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/a;->b:Lteam/opay/opb/qrcode/api/QueryFeeReq;

    .line 4
    .line 5
    check-cast p1, Lteam/opay/core/http/arch/Resource;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$calculateFee$1;->c(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Lteam/opay/opb/qrcode/api/QueryFeeReq;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
