.class public final Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "QRCodeScanViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;",
        "qrcodeScanRepository",
        "<init>",
        "(Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;)V",
        "",
        "r",
        "()V",
        "a",
        "Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;",
        "getQrcodeScanRepository",
        "()Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "b",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "()Landroidx/lifecycle/MutableLiveData;",
        "scanqrPromotion",
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
.field public final a:Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;)V
    .locals 1
    .param p1    # Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "qrcodeScanRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic q(Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->s(Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s(Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_1
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_7

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    if-eq v0, p0, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lteam/opay/qrcode/bean/QRCodeResponse;

    .line 40
    .line 41
    if-eqz p1, :cond_8

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/QRCodeResponse;->c()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/QRCodeResponse;->a()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lteam/opay/qrcode/bean/CommonConfigRsp;

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/CommonConfigRsp;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    :cond_5
    const-string p1, ""

    .line 68
    .line 69
    :cond_6
    iget-object p0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_7
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    .line 78
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method


# virtual methods
.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/qrcode/scanqrcode/QRCodeScanRepository;->b()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ld9c;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ld9c;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
