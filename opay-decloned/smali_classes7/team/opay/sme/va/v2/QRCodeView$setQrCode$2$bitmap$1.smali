.class final Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QRCodeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "Landroid/graphics/Bitmap;",
        "<anonymous>",
        "(Lzr2;)Landroid/graphics/Bitmap;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.va.v2.QRCodeView$setQrCode$2$bitmap$1"
    f = "QRCodeView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/QRCodeView;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/QRCodeView;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/QRCodeView;",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;-><init>(Lteam/opay/sme/va/v2/QRCodeView;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget v0, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_ic_zxing_center_logo:I

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lo7c;->a:Lo7c;

    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getQrCodeInfo()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    :cond_0
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v1, p1, v2}, Lo7c;->i(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method
