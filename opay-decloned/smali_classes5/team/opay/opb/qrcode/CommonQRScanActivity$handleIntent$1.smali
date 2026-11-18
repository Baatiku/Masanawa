.class final Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CommonQRScanActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/CommonQRScanActivity;->h0(Landroid/content/Intent;)V
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
    c = "team.opay.opb.qrcode.CommonQRScanActivity$handleIntent$1"
    f = "CommonQRScanActivity.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroid/net/Uri;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/CommonQRScanActivity;",
            "Landroid/net/Uri;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

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
    new-instance v0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;-><init>(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroid/net/Uri;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->label:I

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lzr2;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1$scanCameraConfig$1;

    .line 40
    .line 41
    iget-object v4, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-direct {v3, v4, v5}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1$scanCameraConfig$1;-><init>(Landroid/net/Uri;Ljr2;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    iput v2, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->label:I

    .line 50
    .line 51
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-ne v1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    move-object v0, p1

    .line 59
    move-object p1, v1

    .line 60
    :goto_0
    check-cast p1, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->p()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 92
    .line 93
    sget-object v0, Lteam/opay/opb/qrcode/scan/QrScannerFragment;->v:Lteam/opay/opb/qrcode/scan/QrScannerFragment$Companion;

    .line 94
    .line 95
    iget-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scan/QrScannerFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/opb/qrcode/scan/QrScannerFragment;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->e0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroidx/fragment/app/Fragment;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->k()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "HMS"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 118
    .line 119
    iget-object v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 120
    .line 121
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->d0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroid/net/Uri;)Landroidx/fragment/app/Fragment;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->e0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroidx/fragment/app/Fragment;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    const-string v0, "OPAY"

    .line 130
    .line 131
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 138
    .line 139
    sget-object v0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->A:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;

    .line 140
    .line 141
    iget-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->e0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroidx/fragment/app/Fragment;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    iget-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->this$0:Lteam/opay/opb/qrcode/CommonQRScanActivity;

    .line 152
    .line 153
    sget-object v0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->A:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;

    .line 154
    .line 155
    iget-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;->$uri:Landroid/net/Uri;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->e0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroidx/fragment/app/Fragment;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method
