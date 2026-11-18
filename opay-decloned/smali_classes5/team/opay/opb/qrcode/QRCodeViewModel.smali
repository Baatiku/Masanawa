.class public final Lteam/opay/opb/qrcode/QRCodeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "QRCodeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u000b0\n2\u0006\u0010\u0010\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/QRCodeViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/opb/qrcode/QRCodeRepository;",
        "repository",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/opb/qrcode/QRCodeRepository;Landroidx/lifecycle/SavedStateHandle;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/opb/qrcode/api/BindQrInfoRsp;",
        "w",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/BindPreQrReq;",
        "request",
        "Lteam/opay/opb/qrcode/api/BindPreQrRsp;",
        "r",
        "(Lteam/opay/opb/qrcode/api/BindPreQrReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;",
        "Lteam/opay/opb/qrcode/api/DecodeQrCodeRsp;",
        "t",
        "(Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/QueryFeeReq;",
        "Lteam/opay/opb/qrcode/api/QueryFeeRsp;",
        "v",
        "(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/CancelOrderReq;",
        "",
        "s",
        "(Lteam/opay/opb/qrcode/api/CancelOrderReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/qrcode/api/PreCreateOrderReq;",
        "Lteam/opay/opb/qrcode/api/PreCreateOrderRsp;",
        "u",
        "(Lteam/opay/opb/qrcode/api/PreCreateOrderReq;)Landroidx/lifecycle/LiveData;",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/opb/qrcode/QRCodeRepository;",
        "d",
        "Landroidx/lifecycle/SavedStateHandle;",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/opb/qrcode/QRCodeRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/opb/qrcode/QRCodeRepository;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/QRCodeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "savedStateHandle"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->b:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->d:Landroidx/lifecycle/SavedStateHandle;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final r(Lteam/opay/opb/qrcode/api/BindPreQrReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/QRCodeRepository;->b(Lteam/opay/opb/qrcode/api/BindPreQrReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final s(Lteam/opay/opb/qrcode/api/CancelOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/QRCodeRepository;->c(Lteam/opay/opb/qrcode/api/CancelOrderReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final t(Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/QRCodeRepository;->d(Lteam/opay/opb/qrcode/api/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final u(Lteam/opay/opb/qrcode/api/PreCreateOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/QRCodeRepository;->e(Lteam/opay/opb/qrcode/api/PreCreateOrderReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final v(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/QRCodeRepository;->f(Lteam/opay/opb/qrcode/api/QueryFeeReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/QRCodeViewModel;->c:Lteam/opay/opb/qrcode/QRCodeRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/QRCodeRepository;->g()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
