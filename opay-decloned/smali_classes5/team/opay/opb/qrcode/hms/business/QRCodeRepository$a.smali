.class public final Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;
.super Lteam/opay/core/http/arch/NetworkBoundAction;
.source "HmsQRCodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;->b(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundAction<",
        "Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
        "Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/opb/qrcode/hms/business/QRCodeRepository$a",
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "g",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "response",
        "i",
        "(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
        "opay-qrcode-hms_release"
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
.field public final synthetic c:Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;

.field public final synthetic d:Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->c:Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->d:Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundAction;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/http/HttpResponse;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->g()Lteam/opay/core/http/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->i(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
            ">;",
            "Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->c:Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;->a(Lteam/opay/opb/qrcode/hms/business/QRCodeRepository;)Lcv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeRepository$a;->d:Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcv;->a(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lh8c;

    .line 14
    .line 15
    invoke-direct {v1}, Lh8c;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3, v1, v2, v3}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public i(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
