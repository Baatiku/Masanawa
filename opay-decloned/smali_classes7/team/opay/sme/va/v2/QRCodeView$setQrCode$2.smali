.class final Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QRCodeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/QRCodeView;->h(Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lkotlin/jvm/functions/Function0;)V
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
    c = "team.opay.sme.va.v2.QRCodeView$setQrCode$2"
    f = "QRCodeView.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

.field private synthetic L$0:Ljava/lang/Object;

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
            "Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

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
    .locals 3
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
    new-instance v0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;-><init>(Lteam/opay/sme/va/v2/QRCodeView;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lzr2;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    :try_start_1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;

    .line 40
    .line 41
    iget-object v4, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 42
    .line 43
    iget-object v5, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->$info:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-direct {v3, v4, v5, v6}, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2$bitmap$1;-><init>(Lteam/opay/sme/va/v2/QRCodeView;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Ljr2;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    iput v2, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->label:I

    .line 52
    .line 53
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-ne v1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    move-object v0, p1

    .line 61
    move-object p1, v1

    .line 62
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 71
    .line 72
    invoke-static {p1}, Lteam/opay/sme/va/v2/QRCodeView;->f(Lteam/opay/sme/va/v2/QRCodeView;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    iget-object v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 79
    .line 80
    invoke-static {v0}, Lteam/opay/sme/va/v2/QRCodeView;->d(Lteam/opay/sme/va/v2/QRCodeView;)Lhzd;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Lhzd;->i:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 85
    .line 86
    const-string v1, "holderIvCode"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 95
    .line 96
    invoke-static {v0}, Lteam/opay/sme/va/v2/QRCodeView;->d(Lteam/opay/sme/va/v2/QRCodeView;)Lhzd;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lhzd;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    iget-object p1, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 107
    .line 108
    invoke-static {p1}, Lteam/opay/sme/va/v2/QRCodeView;->f(Lteam/opay/sme/va/v2/QRCodeView;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 112
    .line 113
    iget-object v0, p0, Lteam/opay/sme/va/v2/QRCodeView$setQrCode$2;->this$0:Lteam/opay/sme/va/v2/QRCodeView;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "getContext(...)"

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    new-array v1, v1, [Lkotlin/Pair;

    .line 126
    .line 127
    const-string v2, "sme_va_business_getQRCode_error"

    .line 128
    .line 129
    invoke-virtual {p1, v0, v2, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
