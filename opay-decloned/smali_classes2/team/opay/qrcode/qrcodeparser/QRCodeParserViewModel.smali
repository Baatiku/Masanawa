.class public final Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "QRCodeParserViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;",
        "qrCodeOnlineParserRepository",
        "<init>",
        "(Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;)V",
        "",
        "msg",
        "",
        "showFailure",
        "(Ljava/lang/String;)V",
        "Lteam/opay/qrcode/bean/ParseQRCodeReq;",
        "req",
        "t",
        "(Lteam/opay/qrcode/bean/ParseQRCodeReq;)V",
        "a",
        "Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;",
        "getQrCodeOnlineParserRepository",
        "()Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
        "b",
        "Landroidx/lifecycle/MutableLiveData;",
        "s",
        "()Landroidx/lifecycle/MutableLiveData;",
        "response",
        "c",
        "r",
        "failure",
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
.field public final a:Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
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
.method public constructor <init>(Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;)V
    .locals 1
    .param p1    # Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "qrCodeOnlineParserRepository"

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
    iput-object p1, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->a:Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic q(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->u(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final showFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final u(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_6

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    if-eq v1, p0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lteam/opay/qrcode/bean/QRCodeResponse;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    invoke-static {p0, v0, v2, v0}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->v(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/QRCodeResponse;->c()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/QRCodeResponse;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->showFailure(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    iget-object p0, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/QRCodeResponse;->a()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    invoke-static {p0, v0, v2, v0}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->v(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->showFailure(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Lteam/opay/qrcode/bean/ParseQRCodeReq;)V
    .locals 1
    .param p1    # Lteam/opay/qrcode/bean/ParseQRCodeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;->a:Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/qrcode/qrcodeparser/QRCodeParserRepository;->b(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lc8c;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lc8c;-><init>(Lteam/opay/qrcode/qrcodeparser/QRCodeParserViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
