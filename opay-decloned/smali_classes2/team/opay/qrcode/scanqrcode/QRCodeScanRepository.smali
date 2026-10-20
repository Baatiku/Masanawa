.class public final Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;
.super Ljava/lang/Object;
.source "QRCodeScanRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;",
        "",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lj9c;",
        "qrCodeWebService",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lj9c;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/qrcode/bean/QRCodeResponse;",
        "Lteam/opay/qrcode/bean/CommonConfigRsp;",
        "b",
        "()Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lj9c;",
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


# instance fields
.field public final a:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lj9c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lj9c;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lj9c;
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
    const-string v0, "qrCodeWebService"

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
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;->b:Lj9c;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;)Lj9c;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;->b:Lj9c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/CommonConfigRsp;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository$a;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
