.class final Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QRCodeScanActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.qrcode.scanqrcode.QRCodeScanActivity$onActivityResult$1"
    f = "QRCodeScanActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Landroid/content/Intent;

.field label:I

.field final synthetic this$0:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->this$0:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

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

.method public static synthetic c(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->invokeSuspend$lambda$1$lambda$0(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;->A()Lteam/opay/qrcode/android/view/ZXingScannerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/android/view/ZXingScannerView;->y(Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
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
    new-instance p1, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->this$0:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;-><init>(Landroid/content/Intent;Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 12
    .line 13
    invoke-static {p1}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 24
    .line 25
    invoke-static {p1}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p1, ""

    .line 39
    .line 40
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x1d

    .line 43
    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 47
    .line 48
    invoke-static {v1}, Lu09;->g(Landroid/content/Intent;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/net/Uri;

    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->this$0:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 59
    .line 60
    invoke-static {v1, v0, p1}, Lcom/zhihu/matisse/util/MediaStoreUtils;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 65
    .line 66
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$onActivityResult$1;->this$0:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 76
    .line 77
    sget-object v1, Li7c;->a:Li7c;

    .line 78
    .line 79
    new-instance v2, Lteam/opay/qrcode/scanqrcode/a;

    .line 80
    .line 81
    invoke-direct {v2, v0, p1}, Lteam/opay/qrcode/scanqrcode/a;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/net/Uri;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Li7c;->b(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
