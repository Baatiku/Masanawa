.class public final Lteam/opay/opb/qrcode/scanner/track/ScanTrack;
.super Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;
.source "ScanTrack.kt"

# interfaces
.implements Lua7;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\n\u0010\tJ\u001b\u0010\r\u001a\u00020\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J3\u0010\u0017\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\tJ\'\u0010\u001d\u001a\u00020\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001b\u0010\u001f\u001a\u00020\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u000eJ3\u0010 \u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008 \u0010\u0018J\u001b\u0010!\u001a\u00020\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008!\u0010\u000eJ\'\u0010\"\u001a\u00020\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0000\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\u000f\u0010#\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008#\u0010\tJ\u000f\u0010$\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008$\u0010\tJ\u000f\u0010%\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008%\u0010\tJ\u000f\u0010&\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008&\u0010\tJ\u000f\u0010\'\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\'\u0010\tJ-\u0010)\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008)\u0010\u0018J-\u0010*\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008*\u0010\u0018Jq\u00102\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+2\u0008\u0010-\u001a\u0004\u0018\u00010\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0008\u00100\u001a\u0004\u0018\u00010\u000b2\u0008\u00101\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u00082\u00103R\u0016\u00105\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00104R\u0016\u00106\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00104\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrack;",
        "Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;",
        "Lua7;",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "config",
        "<init>",
        "(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V",
        "",
        "s",
        "()V",
        "D",
        "",
        "errorMsg",
        "z",
        "(Ljava/lang/String;)V",
        "A",
        "Lteam/opay/opb/qrcode/core/data/ImageItem;",
        "imageItem",
        "B",
        "(Lteam/opay/opb/qrcode/core/data/ImageItem;)V",
        "qrContentSubType",
        "qrContentType",
        "decodeTime",
        "E",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "y",
        "getBitmapTime",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "info",
        "w",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "x",
        "v",
        "u",
        "t",
        "C",
        "a",
        "d",
        "b",
        "c",
        "qrFrom",
        "e",
        "f",
        "",
        "isSuccess",
        "apiTime",
        "httpCode",
        "errorCode",
        "bizType",
        "serverScanId",
        "g",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Z",
        "hasDecodeScanSuccess",
        "hasDecodeAlbumSuccess",
        "opay-qrcode-scanner_release"
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
.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;-><init>(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_open_camera_success"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final B(Lteam/opay/opb/qrcode/core/data/ImageItem;)V
    .locals 3
    .param p1    # Lteam/opay/opb/qrcode/core/data/ImageItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/ImageItem;->b()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "imageWidth"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "imageHeight"

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/ImageItem;->a()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [Lkotlin/Pair;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v0, v1, v2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object p1, v1, v0

    .line 34
    .line 35
    const-string p1, "qr_sdk_scan_camera_start_decode"

    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_flashlight_click"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    sget-object v0, Lk93;->a:Lk93;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk93;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Lkotlin/Pair;

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [Lkotlin/Pair;

    .line 22
    .line 23
    const-string v1, "qr_sdk_scan_show"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->d:Z

    .line 3
    .line 4
    const-string v1, "codeType"

    .line 5
    .line 6
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "qrContentSubType"

    .line 11
    .line 12
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v2, "qrContentType"

    .line 17
    .line 18
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v2, "decodeTime"

    .line 23
    .line 24
    invoke-static {v2, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const/4 v2, 0x4

    .line 29
    new-array v2, v2, [Lkotlin/Pair;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v1, v2, v3

    .line 33
    .line 34
    aput-object p1, v2, v0

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    aput-object p2, v2, p1

    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    aput-object p3, v2, p1

    .line 41
    .line 42
    const-string p1, "qr_sdk_scan_success"

    .line 43
    .line 44
    invoke-virtual {p0, p1, v2}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_camera_permission_fail"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_album_click"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_album_permission_fail"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->d:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "scanSuccess"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->e:Z

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "albumSuccess"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v0, v2, v3

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v2, v0

    .line 33
    .line 34
    const-string v0, "qr_sdk_scan_back_click"

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "qrFrom"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "qrType"

    .line 8
    .line 9
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "qrContentType"

    .line 14
    .line 15
    invoke-static {v1, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string v1, "qrContentSubType"

    .line 20
    .line 21
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x4

    .line 26
    new-array v1, v1, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    aput-object v0, v1, p1

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    aput-object p3, v1, p1

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    aput-object p2, v1, p1

    .line 39
    .line 40
    const-string p1, "qr_sdk_decode_success_no_parse"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "qrFrom"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "qrType"

    .line 8
    .line 9
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "qrContentType"

    .line 14
    .line 15
    invoke-static {v1, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string v1, "qrContentSubType"

    .line 20
    .line 21
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x4

    .line 26
    new-array v1, v1, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    aput-object v0, v1, p1

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    aput-object p3, v1, p1

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    aput-object p2, v1, p1

    .line 39
    .line 40
    const-string p1, "qr_sdk_parse_start"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public g(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "isSuccess"

    .line 6
    .line 7
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "apiTime"

    .line 12
    .line 13
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "httpCode"

    .line 18
    .line 19
    invoke-static {v0, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string v0, "errorCode"

    .line 24
    .line 25
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    const-string v0, "errorMsg"

    .line 30
    .line 31
    invoke-static {v0, p5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    const-string v0, "qrFrom"

    .line 36
    .line 37
    invoke-static {v0, p6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p6

    .line 41
    const-string v0, "qrType"

    .line 42
    .line 43
    invoke-static {v0, p7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "qrContentType"

    .line 48
    .line 49
    invoke-static {v1, p8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object p8

    .line 53
    const-string v1, "qrContentSubType"

    .line 54
    .line 55
    invoke-static {v1, p7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p7

    .line 59
    const-string v1, "bizType"

    .line 60
    .line 61
    invoke-static {v1, p9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p9

    .line 65
    const-string v1, "serverScanId"

    .line 66
    .line 67
    invoke-static {v1, p10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object p10

    .line 71
    const/16 v1, 0xb

    .line 72
    .line 73
    new-array v1, v1, [Lkotlin/Pair;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    aput-object p1, v1, v2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    aput-object p2, v1, p1

    .line 80
    .line 81
    const/4 p1, 0x2

    .line 82
    aput-object p3, v1, p1

    .line 83
    .line 84
    const/4 p1, 0x3

    .line 85
    aput-object p4, v1, p1

    .line 86
    .line 87
    const/4 p1, 0x4

    .line 88
    aput-object p5, v1, p1

    .line 89
    .line 90
    const/4 p1, 0x5

    .line 91
    aput-object p6, v1, p1

    .line 92
    .line 93
    const/4 p1, 0x6

    .line 94
    aput-object v0, v1, p1

    .line 95
    .line 96
    const/4 p1, 0x7

    .line 97
    aput-object p8, v1, p1

    .line 98
    .line 99
    const/16 p1, 0x8

    .line 100
    .line 101
    aput-object p7, v1, p1

    .line 102
    .line 103
    const/16 p1, 0x9

    .line 104
    .line 105
    aput-object p9, v1, p1

    .line 106
    .line 107
    const/16 p1, 0xa

    .line 108
    .line 109
    aput-object p10, v1, p1

    .line 110
    .line 111
    const-string p1, "qr_sdk_parse_result"

    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->m()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->h(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "decodeTime"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    const-string v2, "errorMsg"

    .line 17
    .line 18
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v0

    .line 34
    :goto_1
    const-string v3, "isOOM"

    .line 35
    .line 36
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v3, v0

    .line 48
    :goto_2
    const-string v4, "targetArea"

    .line 49
    .line 50
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move-object v4, v0

    .line 62
    :goto_3
    const-string v5, "actualWith"

    .line 63
    .line 64
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    const-string p2, "actualHeight"

    .line 75
    .line 76
    invoke-static {p2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v0, 0x6

    .line 81
    new-array v0, v0, [Lkotlin/Pair;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    aput-object p1, v0, v5

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    aput-object v1, v0, p1

    .line 88
    .line 89
    const/4 p1, 0x2

    .line 90
    aput-object v2, v0, p1

    .line 91
    .line 92
    const/4 p1, 0x3

    .line 93
    aput-object v3, v0, p1

    .line 94
    .line 95
    const/4 p1, 0x4

    .line 96
    aput-object v4, v0, p1

    .line 97
    .line 98
    const/4 p1, 0x5

    .line 99
    aput-object p2, v0, p1

    .line 100
    .line 101
    const-string p1, "qr_sdk_scan_alum_decode_fail"

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "decodeTime"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    const-string p1, "qr_sdk_scan_alum_decode_no_qr"

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrack;->e:Z

    .line 3
    .line 4
    const-string v1, "codeType"

    .line 5
    .line 6
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "qrContentType"

    .line 11
    .line 12
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v2, "qrContentSubType"

    .line 17
    .line 18
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "decodeTime"

    .line 23
    .line 24
    invoke-static {v2, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const/4 v2, 0x4

    .line 29
    new-array v2, v2, [Lkotlin/Pair;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v1, v2, v3

    .line 33
    .line 34
    aput-object p2, v2, v0

    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    aput-object p1, v2, p2

    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    aput-object p3, v2, p1

    .line 41
    .line 42
    const-string p1, "qr_sdk_scan_alum_decode_success"

    .line 43
    .line 44
    invoke-virtual {p0, p1, v2}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final w(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "getBitmapTime"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    const-string v2, "errorMsg"

    .line 17
    .line 18
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v0

    .line 34
    :goto_1
    const-string v3, "isOOM"

    .line 35
    .line 36
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v3, v0

    .line 48
    :goto_2
    const-string v4, "targetArea"

    .line 49
    .line 50
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move-object v4, v0

    .line 62
    :goto_3
    const-string v5, "actualWith"

    .line 63
    .line 64
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    const-string p2, "actualHeight"

    .line 75
    .line 76
    invoke-static {p2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v0, 0x6

    .line 81
    new-array v0, v0, [Lkotlin/Pair;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    aput-object p1, v0, v5

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    aput-object v1, v0, p1

    .line 88
    .line 89
    const/4 p1, 0x2

    .line 90
    aput-object v2, v0, p1

    .line 91
    .line 92
    const/4 p1, 0x3

    .line 93
    aput-object v3, v0, p1

    .line 94
    .line 95
    const/4 p1, 0x4

    .line 96
    aput-object v4, v0, p1

    .line 97
    .line 98
    const/4 p1, 0x5

    .line 99
    aput-object p2, v0, p1

    .line 100
    .line 101
    const-string p1, "qr_sdk_scan_album_getbitmap_fail"

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "getBitmapTime"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    const-string p1, "qr_sdk_scan_album_getbitmap_success"

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const-string v1, "qr_sdk_scan_album_select_content"

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    const-string p1, "qr_sdk_scan_open_camera_fail"

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->r(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
