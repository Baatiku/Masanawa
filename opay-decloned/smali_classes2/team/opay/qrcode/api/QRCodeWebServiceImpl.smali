.class public final Lteam/opay/qrcode/api/QRCodeWebServiceImpl;
.super Ljava/lang/Object;
.source "QRCodeWebService.kt"

# interfaces
.implements Lj9c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J/\u0010\u000b\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u000f\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u00082\u0006\u0010\u0007\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0011\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u00082\u0006\u0010\u0007\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\'\u0010\u0013\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/qrcode/api/QRCodeWebServiceImpl;",
        "Lj9c;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/qrcode/bean/MyQRCodeReq;",
        "req",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/qrcode/bean/QRCodeResponse;",
        "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
        "a",
        "(Lteam/opay/qrcode/bean/MyQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/qrcode/bean/ParseQRCodeReq;",
        "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
        "c",
        "(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;",
        "b",
        "Lteam/opay/qrcode/bean/CommonConfigRsp;",
        "d",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/qrcode/api/a$a;",
        "Lid8;",
        "g",
        "()Lteam/opay/qrcode/api/a$a;",
        "api",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lk9c;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lk9c;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->a:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Landroid/app/Application;)Lteam/opay/qrcode/api/a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->f(Landroid/app/Application;)Lteam/opay/qrcode/api/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Landroid/app/Application;)Lteam/opay/qrcode/api/a$a;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/qrcode/api/a;->a:Lteam/opay/qrcode/api/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/qrcode/api/a;->a(Landroid/content/Context;)Lteam/opay/qrcode/api/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public a(Lteam/opay/qrcode/bean/MyQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/qrcode/bean/MyQRCodeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/qrcode/bean/MyQRCodeReq;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            ">;",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->g()Lteam/opay/qrcode/api/a$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Lteam/opay/qrcode/api/a$a;->a(Lteam/opay/qrcode/bean/MyQRCodeReq;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$b;

    .line 17
    .line 18
    invoke-direct {v1}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$b;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public b(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/qrcode/bean/ParseQRCodeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/qrcode/bean/ParseQRCodeReq;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->g()Lteam/opay/qrcode/api/a$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Lteam/opay/qrcode/api/a$a;->b(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$d;

    .line 17
    .line 18
    invoke-direct {v1}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$d;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public c(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/qrcode/bean/ParseQRCodeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/qrcode/bean/ParseQRCodeReq;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/ParseQRCodeRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->g()Lteam/opay/qrcode/api/a$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Lteam/opay/qrcode/api/a$a;->c(Lteam/opay/qrcode/bean/ParseQRCodeReq;)Lretrofit2/Call;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$c;

    .line 17
    .line 18
    invoke-direct {v1}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public d()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/CommonConfigRsp;",
            ">;",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/CommonConfigRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->g()Lteam/opay/qrcode/api/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lteam/opay/qrcode/bean/CommonConfigReq;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-direct {v2, v3, v4, v3}, Lteam/opay/qrcode/bean/CommonConfigReq;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lteam/opay/qrcode/api/a$a;->e(Lteam/opay/qrcode/bean/CommonConfigReq;)Lretrofit2/Call;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$a;

    .line 19
    .line 20
    invoke-direct {v2}, Lteam/opay/qrcode/api/QRCodeWebServiceImpl$a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/LiveDataCall;-><init>(Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final g()Lteam/opay/qrcode/api/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/api/QRCodeWebServiceImpl;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/qrcode/api/a$a;

    .line 8
    .line 9
    return-object v0
.end method
