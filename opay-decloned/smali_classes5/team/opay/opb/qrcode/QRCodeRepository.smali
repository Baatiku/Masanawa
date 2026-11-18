.class public final Lteam/opay/opb/qrcode/QRCodeRepository;
.super Ljava/lang/Object;
.source "QRCodeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\t0\u00082\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\t0\u00082\u0006\u0010\u000e\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\t0\u00082\u0006\u0010\u000e\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00082\u0006\u0010\u000e\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\t0\u00082\u0006\u0010\u000e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/QRCodeRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lbv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lbv;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/opb/qrcode/api/BindQrInfoRsp;",
        "g",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/BindPreQrReq;",
        "request",
        "Lteam/opay/opb/qrcode/api/BindPreQrRsp;",
        "b",
        "(Lteam/opay/opb/qrcode/api/BindPreQrReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;",
        "Lteam/opay/opb/qrcode/api/DecodeQrCodeRsp;",
        "d",
        "(Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/QueryFeeReq;",
        "Lteam/opay/opb/qrcode/api/QueryFeeRsp;",
        "f",
        "(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/CancelOrderReq;",
        "c",
        "(Lteam/opay/opb/qrcode/api/CancelOrderReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/PreCreateOrderReq;",
        "Lteam/opay/opb/qrcode/api/PreCreateOrderRsp;",
        "e",
        "(Lteam/opay/opb/qrcode/api/PreCreateOrderReq;)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "Lbv;",
        "opay-qrcode_release"
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
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lbv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lbv;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->b:Lbv;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/opb/qrcode/QRCodeRepository;)Lbv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->b:Lbv;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/opb/qrcode/api/BindPreQrReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/api/BindPreQrReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/api/BindPreQrReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/qrcode/api/BindPreQrRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$a;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/opb/qrcode/api/BindPreQrReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final c(Lteam/opay/opb/qrcode/api/CancelOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/api/CancelOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/api/CancelOrderReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$b;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/opb/qrcode/api/CancelOrderReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final d(Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/qrcode/api/DecodeQrCodeRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$c;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final e(Lteam/opay/opb/qrcode/api/PreCreateOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/api/PreCreateOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/api/PreCreateOrderReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/qrcode/api/PreCreateOrderRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$d;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/opb/qrcode/api/PreCreateOrderReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final f(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/api/QueryFeeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/api/QueryFeeReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/qrcode/api/QueryFeeRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$e;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$e;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/opb/qrcode/api/QueryFeeReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/qrcode/api/BindQrInfoRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/opb/qrcode/QRCodeRepository$f;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/opb/qrcode/QRCodeRepository$f;-><init>(Lteam/opay/opb/qrcode/QRCodeRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
