.class public final Lteam/opay/qrcode/api/QRCodeWebServiceImpl$c;
.super Ljava/lang/Object;
.source "QRCodeWebService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->c(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lteam/opay/qrcode/bean/QRCodeResponse<",
        "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
        ">;",
        "Lteam/opay/qrcode/bean/QRCodeResponse<",
        "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u000026\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002`\u0004J$\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/qrcode/api/QRCodeWebServiceImpl$c",
        "Lkotlin/Function1;",
        "Lteam/opay/qrcode/bean/QRCodeResponse;",
        "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
        "Lteam/opay/qrcode/api/ResponseAdapter;",
        "p1",
        "a",
        "(Lteam/opay/qrcode/bean/QRCodeResponse;)Lteam/opay/qrcode/bean/QRCodeResponse;",
        "qrcode_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/qrcode/bean/QRCodeResponse;)Lteam/opay/qrcode/bean/QRCodeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;)",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "p1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/qrcode/bean/QRCodeResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$c;->a(Lteam/opay/qrcode/bean/QRCodeResponse;)Lteam/opay/qrcode/bean/QRCodeResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
