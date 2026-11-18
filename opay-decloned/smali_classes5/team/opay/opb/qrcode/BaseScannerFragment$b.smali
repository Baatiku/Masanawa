.class public final Lteam/opay/opb/qrcode/BaseScannerFragment$b;
.super Ljava/lang/Object;
.source "BaseScannerFragment.kt"

# interfaces
.implements Le4d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/BaseScannerFragment;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "team/opay/opb/qrcode/BaseScannerFragment$b",
        "Le4d;",
        "",
        "e",
        "",
        "a",
        "(Ljava/lang/Throwable;)V",
        "",
        "isFlashSupported",
        "b",
        "(Z)V",
        "Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;",
        "result",
        "f",
        "(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V",
        "",
        "getBitmapTime",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "errorInfo",
        "d",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "decodeTime",
        "g",
        "(Ljava/lang/String;)V",
        "c",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/BaseScannerFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->o0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->R(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V
    .locals 8

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :goto_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object p1, v1

    .line 42
    :goto_1
    if-nez p1, :cond_2

    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    :cond_2
    move-object v4, p1

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move-object p1, v1

    .line 55
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->c()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->hideLoading()V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->s0()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual/range {v2 .. v7}, Lteam/opay/opb/qrcode/BaseScannerFragment;->f0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->F0()V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->hideLoading()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->F0()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->hideLoading()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->F0()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public f(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V
    .locals 8

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    :goto_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object p1, v1

    .line 43
    :goto_1
    if-nez p1, :cond_3

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    :cond_3
    move-object v4, p1

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move-object p1, v1

    .line 56
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/DecodeItem;->c()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->H0()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->s0()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual/range {v2 .. v7}, Lteam/opay/opb/qrcode/BaseScannerFragment;->f0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->hideLoading()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment$b;->a:Lteam/opay/opb/qrcode/BaseScannerFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->F0()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
