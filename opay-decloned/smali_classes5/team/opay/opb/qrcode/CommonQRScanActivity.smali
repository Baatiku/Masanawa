.class public final Lteam/opay/opb/qrcode/CommonQRScanActivity;
.super Lpw6;
.source "CommonQRScanActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0008J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0019\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u00178\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\"\u001a\u00020\u001d8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/CommonQRScanActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "h0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "i0",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "onDestroy",
        "Landroid/net/Uri;",
        "uri",
        "f0",
        "(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;",
        "",
        "p",
        "Z",
        "B",
        "()Z",
        "insetBottom",
        "",
        "q",
        "I",
        "g0",
        "()I",
        "navColor",
        "Lkotlinx/coroutines/l;",
        "r",
        "Lkotlinx/coroutines/l;",
        "handleScanIntentJob",
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
.field public final p:Z

.field public final q:I

.field public r:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/opb/qrcode/R$layout;->qr_sdk_activity_scan_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lpw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/core/common/R$color;->transparent:I

    .line 7
    .line 8
    iput v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->q:I

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic d0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroid/net/Uri;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->f0(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e0(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->i0(Landroidx/fragment/app/Fragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h0(Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sparse-switch v2, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :sswitch_0
    const-string v2, "otravel://qrscan_v2/entrance"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string v2, "otravel://scan.qrcode/2sqr"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :sswitch_2
    const-string v2, "opay://common/qrcode/scan"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :sswitch_3
    const-string v2, "otravel://qrscan/entrance"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :sswitch_4
    const-string v2, "opay://scan.qrcode/2sqr"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->r:Lkotlinx/coroutines/l;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v6, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;

    .line 82
    .line 83
    invoke-direct {v6, p0, p1, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity$handleIntent$1;-><init>(Lteam/opay/opb/qrcode/CommonQRScanActivity;Landroid/net/Uri;Ljr2;)V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->r:Lkotlinx/coroutines/l;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    .line 99
    .line 100
    :goto_3
    return-void

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x769c6a8d -> :sswitch_4
        -0x4939654a -> :sswitch_3
        -0x3c368ce5 -> :sswitch_2
        -0x334eafd -> :sswitch_1
        0x62f65ab9 -> :sswitch_0
    .end sparse-switch
.end method

.method private final i0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/opb/qrcode/R$id;->scanFragmentContainer:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f0(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/IFragment;->Companion:Lteam/opay/core/common/spi/IFragment$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/common/spi/FragmentTab;->QRCODE_HMS:Lteam/opay/core/common/spi/FragmentTab;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/common/spi/IFragment$Companion;->a(Lteam/opay/core/common/spi/FragmentTab;)Lteam/opay/core/common/spi/IModuleFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/core/common/spi/IModuleFragment;->getFragmentTab()Lteam/opay/core/common/spi/FragmentTab;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eq v2, v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->A:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "key_uri"

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v0
.end method

.method public g0()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lpw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object p1, Lhf5;->a:Lhf5;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p0, v0}, Lhf5;->b(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->h0(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "getWindow(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->g0()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {p0, v1}, Ldr2;->b(Landroid/content/Context;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v0, v1}, Lhf5;->a(Landroid/view/Window;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lpw6;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->r:Lkotlinx/coroutines/l;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v1, p0, Lteam/opay/opb/qrcode/CommonQRScanActivity;->r:Lkotlinx/coroutines/l;

    .line 14
    .line 15
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/CommonQRScanActivity;->h0(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
