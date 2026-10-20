.class public final Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;
.super Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
.source "HmsImageAnalyzer.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ)\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ9\u0010\"\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J9\u0010%\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008%\u0010#J3\u0010+\u001a\u00020\u000b2\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&2\u0006\u0010\u0018\u001a\u00020\u00172\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000103H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u000200H\u0016\u00a2\u0006\u0004\u00087\u00108J\'\u0010;\u001a\u00020\u000b2\u0016\u0010:\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008;\u0010<J1\u0010>\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010=\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008>\u0010?JA\u0010>\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008>\u0010@J\u0017\u0010C\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020AH\u0017\u00a2\u0006\u0004\u0008C\u0010DR\u0014\u0010E\u001a\u0002008\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR&\u0010G\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u001b\u0010M\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR\u001b\u0010P\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010J\u001a\u0004\u0008O\u0010LR\u001b\u0010T\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010J\u001a\u0004\u0008R\u0010S\u00a8\u0006U"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "<init>",
        "()V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "bitmapInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
        "liveData",
        "",
        "decodeBitmap",
        "(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;Landroidx/lifecycle/MutableLiveData;)V",
        "",
        "isLocalPhoto",
        "Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;",
        "getHmsScanAnalyzerOptions",
        "(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;",
        "Landroid/media/Image;",
        "image",
        "Landroid/graphics/Rect;",
        "framingRectInPreview",
        "Lxka;",
        "callback",
        "decodeBitmapWithCamera",
        "(Landroid/media/Image;Landroid/graphics/Rect;Lxka;)V",
        "cropRect",
        "decodeFrame",
        "",
        "nv21Data",
        "",
        "width",
        "height",
        "decodeFrameNv21",
        "([BIILandroid/graphics/Rect;Lxka;)V",
        "data",
        "decodeBitmapNv21",
        "",
        "Lcom/huawei/hms/ml/scan/HmsScan;",
        "result",
        "",
        "decodeTime",
        "handleDecodeResult",
        "([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V",
        "Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;",
        "getHmsScanFrameOptions",
        "(Z)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;",
        "",
        "getScanSDK",
        "()Ljava/lang/String;",
        "Ljava/lang/Class;",
        "getSdkClass",
        "()Ljava/lang/Class;",
        "scanType",
        "initSdk",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "debugBitmapCallback",
        "setDebugBitmapCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isEnableZoom",
        "analyseImage",
        "(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V",
        "([BIIZLandroid/graphics/Rect;Lxka;)V",
        "Landroid/net/Uri;",
        "uri",
        "decodeAlbumImage",
        "(Landroid/net/Uri;)V",
        "tag",
        "Ljava/lang/String;",
        "mDebugBitmapCallback",
        "Lkotlin/jvm/functions/Function1;",
        "cameraAnalyzerOptions$delegate",
        "Lid8;",
        "getCameraAnalyzerOptions",
        "()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;",
        "cameraAnalyzerOptions",
        "albumAnalyzerOptions$delegate",
        "getAlbumAnalyzerOptions",
        "albumAnalyzerOptions",
        "cameraFrameOptions$delegate",
        "getCameraFrameOptions",
        "()Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;",
        "cameraFrameOptions",
        "opay-qrcode-hms_release"
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
.field private final albumAnalyzerOptions$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cameraAnalyzerOptions$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cameraFrameOptions$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDebugBitmapCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HmsImageAnalyzer"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->tag:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lnx6;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lnx6;-><init>(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraAnalyzerOptions$delegate:Lid8;

    .line 18
    .line 19
    new-instance v0, Lox6;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lox6;-><init>(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->albumAnalyzerOptions$delegate:Lid8;

    .line 29
    .line 30
    new-instance v0, Lpx6;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lpx6;-><init>(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraFrameOptions$delegate:Lid8;

    .line 40
    .line 41
    return-void
.end method

.method private static final albumAnalyzerOptions_delegate$lambda$1(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getHmsScanAnalyzerOptions(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static final cameraAnalyzerOptions_delegate$lambda$0(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getHmsScanAnalyzerOptions(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static final cameraFrameOptions_delegate$lambda$2(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getHmsScanFrameOptions(Z)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraFrameOptions_delegate$lambda$2(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final decodeBitmap(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;Landroidx/lifecycle/MutableLiveData;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getAlbumAnalyzerOptions()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, p1, v3}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decodeWithBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sub-long/2addr v3, v0

    .line 24
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    array-length v5, v2

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_0
    if-ge v6, v5, :cond_1

    .line 38
    .line 39
    aget-object v7, v2, v6

    .line 40
    .line 41
    iget-object v8, v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    .line 42
    .line 43
    const-string v9, "originalValue"

    .line 44
    .line 45
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v8}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_0

    .line 53
    .line 54
    new-instance v8, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 55
    .line 56
    iget-object v9, v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v10, Lwx6;->a:Lwx6;

    .line 59
    .line 60
    iget v11, v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 61
    .line 62
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v10, v11}, Lwx6;->c(Ljava/lang/Integer;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    iget v7, v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v10, v7}, Lwx6;->b(Ljava/lang/Integer;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-direct {v8, v9, v11, v7}, Lteam/opay/opb/qrcode/core/data/DecodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p2

    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :catch_0
    move-exception v2

    .line 91
    goto :goto_4

    .line 92
    :catch_1
    move-exception v2

    .line 93
    goto :goto_5

    .line 94
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    new-instance v2, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    invoke-direct {v2, v5, v3, v4}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;

    .line 110
    .line 111
    invoke-direct {v3, v2}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;-><init>(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    new-instance v2, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;

    .line 119
    .line 120
    invoke-direct {v2, v3}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-nez p2, :cond_3

    .line 131
    .line 132
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :goto_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    sub-long/2addr v3, v0

    .line 144
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-instance v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 149
    .line 150
    new-instance v9, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const/4 v4, 0x0

    .line 169
    move-object v3, v9

    .line 170
    invoke-direct/range {v3 .. v8}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {v1, v0, v9}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-nez p2, :cond_3

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    sub-long/2addr v3, v0

    .line 191
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 196
    .line 197
    new-instance v9, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    const/4 v4, 0x1

    .line 216
    move-object v3, v9

    .line 217
    invoke-direct/range {v3 .. v8}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v0, v9}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-nez p2, :cond_3

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_3
    :goto_6
    return-void

    .line 234
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 235
    .line 236
    .line 237
    move-result p3

    .line 238
    if-nez p3, :cond_4

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    .line 242
    .line 243
    :cond_4
    throw p2
.end method

.method private final decodeBitmapNv21([BIILandroid/graphics/Rect;Lxka;)V
    .locals 14

    .line 1
    const-string v1, "OpayScannerView  decodeBitmapNv21 finally isRecycled "

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    new-instance v6, Landroid/graphics/Rect;

    .line 13
    .line 14
    move/from16 v10, p2

    .line 15
    .line 16
    move/from16 v11, p3

    .line 17
    .line 18
    invoke-direct {v6, v0, v0, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object v5, p0

    .line 24
    move-object v6, v3

    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object v5, p0

    .line 29
    move-object v6, v3

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catch_1
    move-exception v0

    .line 33
    move-object v5, p0

    .line 34
    move-object v6, v3

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    move/from16 v10, p2

    .line 38
    .line 39
    move/from16 v11, p3

    .line 40
    .line 41
    move-object/from16 v6, p4

    .line 42
    .line 43
    :goto_0
    new-instance v13, Landroid/graphics/YuvImage;

    .line 44
    .line 45
    const/16 v9, 0x11

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    move-object v7, v13

    .line 49
    move-object v8, p1

    .line 50
    move/from16 v10, p2

    .line 51
    .line 52
    move/from16 v11, p3

    .line 53
    .line 54
    invoke-direct/range {v7 .. v12}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v8, 0x64

    .line 63
    .line 64
    invoke-virtual {v13, v6, v8, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    array-length v7, v6

    .line 72
    invoke-static {v6, v0, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    :try_start_1
    sget-object v0, Lcre;->a:Lcre;

    .line 79
    .line 80
    new-instance v4, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    const-string v5, "ScanView decodeBitmapNv21 bitmap == null "

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object v5, p0

    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :catch_2
    move-exception v0

    .line 96
    move-object v5, p0

    .line 97
    goto :goto_2

    .line 98
    :catch_3
    move-exception v0

    .line 99
    move-object v5, p0

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getCameraAnalyzerOptions()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v0, v6, v7}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decodeWithBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    sub-long/2addr v7, v4

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    move-object v5, p0

    .line 123
    move-object/from16 v7, p5

    .line 124
    .line 125
    :try_start_2
    invoke-direct {p0, v0, v7, v4}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    :goto_1
    sget-object v0, Lsk8;->c:Lsk8;

    .line 135
    .line 136
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :catchall_2
    move-exception v0

    .line 144
    goto :goto_5

    .line 145
    :catch_4
    move-exception v0

    .line 146
    goto :goto_2

    .line 147
    :catch_5
    move-exception v0

    .line 148
    goto :goto_3

    .line 149
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    .line 150
    .line 151
    const-string v7, "ScanView Exception decodeBitmapNv21 decodeFrame: "

    .line 152
    .line 153
    invoke-direct {v4, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    sget-object v7, Lcre;->a:Lcre;

    .line 157
    .line 158
    invoke-virtual {v7, v4}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 162
    .line 163
    .line 164
    if-eqz v6, :cond_2

    .line 165
    .line 166
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_2

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    .line 174
    .line 175
    const-string v7, "ScanView Exception HmsImageAnalyzer decodeBitmapNv21 OutOfMemoryError: "

    .line 176
    .line 177
    invoke-direct {v4, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    sget-object v7, Lcre;->a:Lcre;

    .line 181
    .line 182
    invoke-virtual {v7, v4}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 186
    .line 187
    .line 188
    if-eqz v6, :cond_2

    .line 189
    .line 190
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    :goto_4
    return-void

    .line 198
    :goto_5
    if-eqz v6, :cond_3

    .line 199
    .line 200
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_3

    .line 205
    .line 206
    sget-object v4, Lsk8;->c:Lsk8;

    .line 207
    .line 208
    invoke-static {v4, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    .line 213
    .line 214
    :cond_3
    throw v0
.end method

.method private final decodeBitmapWithCamera(Landroid/media/Image;Landroid/graphics/Rect;Lxka;)V
    .locals 10

    .line 1
    const-string v0, "OpayScannerView  analyseImage finally isRecycled "

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const/16 v5, 0x64

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    sget-object v7, Lwx6;->a:Lwx6;

    .line 15
    .line 16
    invoke-virtual {v7, p1, p2, v5}, Lwx6;->f(Landroid/media/Image;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    new-instance p2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-direct {p2, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, p1, p2, v5}, Lwx6;->f(Landroid/media/Image;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    move-object p2, v2

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :catch_0
    move-exception p1

    .line 45
    move-object p2, v2

    .line 46
    goto :goto_2

    .line 47
    :catch_1
    move-exception p1

    .line 48
    move-object p2, v2

    .line 49
    goto :goto_3

    .line 50
    :cond_0
    sget-object p2, Lwx6;->a:Lwx6;

    .line 51
    .line 52
    new-instance v7, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    invoke-direct {v7, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1, v7, v5}, Lwx6;->f(Landroid/media/Image;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 70
    .line 71
    :try_start_1
    sget-object p1, Lcre;->a:Lcre;

    .line 72
    .line 73
    new-instance p3, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    const-string v3, "ScanView decodeBitmapWithCamera bitmap == null "

    .line 76
    .line 77
    invoke-direct {p3, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    goto :goto_5

    .line 86
    :catch_2
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :catch_3
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getCameraAnalyzerOptions()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {p1, p2, v5}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decodeWithBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    sub-long/2addr v5, v3

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {p0, p1, p3, v3}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    :goto_1
    sget-object p1, Lsk8;->c:Lsk8;

    .line 121
    .line 122
    invoke-static {p1, v0, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :goto_2
    :try_start_2
    new-instance p3, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string v3, "ScanView Exception HmsImageAnalyzer analyseImage: "

    .line 132
    .line 133
    invoke-direct {p3, v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    sget-object v3, Lcre;->a:Lcre;

    .line 137
    .line 138
    invoke-virtual {v3, p3}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .line 143
    .line 144
    if-eqz p2, :cond_3

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_3

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :goto_3
    :try_start_3
    new-instance p3, Ljava/lang/RuntimeException;

    .line 154
    .line 155
    const-string v3, "ScanView Exception HmsImageAnalyzer analyseImage OutOfMemoryError: "

    .line 156
    .line 157
    invoke-direct {p3, v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    sget-object v3, Lcre;->a:Lcre;

    .line 161
    .line 162
    invoke-virtual {v3, p3}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .line 167
    .line 168
    if-eqz p2, :cond_3

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_3

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    :goto_4
    return-void

    .line 178
    :goto_5
    if-eqz p2, :cond_4

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-nez p3, :cond_4

    .line 185
    .line 186
    sget-object p3, Lsk8;->c:Lsk8;

    .line 187
    .line 188
    invoke-static {p3, v0, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    .line 193
    .line 194
    :cond_4
    throw p1
.end method

.method private final decodeFrame(Landroid/media/Image;Landroid/graphics/Rect;Lxka;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object v2, Lwx6;->a:Lwx6;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lwx6;->e(Landroid/media/Image;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v2, v3, v4, p1, p2}, Lwx6;->a([BIILandroid/graphics/Rect;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-instance p1, Landroid/graphics/YuvImage;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/lit8 v8, v2, -0x2

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    and-int/lit8 v9, p2, -0x2

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/16 v7, 0x11

    .line 41
    .line 42
    move-object v5, p1

    .line 43
    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/huawei/hms/ml/scan/HmsScanFrame;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lcom/huawei/hms/ml/scan/HmsScanFrame;-><init>(Landroid/graphics/YuvImage;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    new-instance p2, Landroid/graphics/YuvImage;

    .line 57
    .line 58
    sget-object v2, Lwx6;->a:Lwx6;

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lwx6;->e(Landroid/media/Image;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    const/4 v7, 0x0

    .line 73
    const/16 v4, 0x11

    .line 74
    .line 75
    move-object v2, p2

    .line 76
    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lcom/huawei/hms/ml/scan/HmsScanFrame;

    .line 80
    .line 81
    invoke-direct {p1, p2}, Lcom/huawei/hms/ml/scan/HmsScanFrame;-><init>(Landroid/graphics/YuvImage;)V

    .line 82
    .line 83
    .line 84
    move-object p2, p1

    .line 85
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getCameraFrameOptions()Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {p1, p2, v2}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decode(Landroid/content/Context;Lcom/huawei/hms/ml/scan/HmsScanFrame;Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;)Lcom/huawei/hms/ml/scan/HmsScanResult;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanResult;->getHmsScans()[Lcom/huawei/hms/ml/scan/HmsScan;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    sub-long/2addr v2, v0

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p0, p1, p3, p2}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    const-string p3, "ScanView Exception HmsImageAnalyzer decodeFrame: "

    .line 117
    .line 118
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    sget-object p3, Lcre;->a:Lcre;

    .line 122
    .line 123
    invoke-virtual {p3, p2}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 131
    .line 132
    const-string p3, "ScanView Exception HmsImageAnalyzer decodeFrame OutOfMemoryError: "

    .line 133
    .line 134
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    sget-object p3, Lcre;->a:Lcre;

    .line 138
    .line 139
    invoke-virtual {p3, p2}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-void
.end method

.method private final decodeFrameNv21([BIILandroid/graphics/Rect;Lxka;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    sget-object v2, Lwx6;->a:Lwx6;

    .line 8
    .line 9
    invoke-virtual {v2, p1, p2, p3, p4}, Lwx6;->a([BIILandroid/graphics/Rect;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance p1, Landroid/graphics/YuvImage;

    .line 14
    .line 15
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    and-int/lit8 v6, p2, -0x2

    .line 20
    .line 21
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    and-int/lit8 v7, p2, -0x2

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v5, 0x11

    .line 29
    .line 30
    move-object v3, p1

    .line 31
    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lcom/huawei/hms/ml/scan/HmsScanFrame;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/huawei/hms/ml/scan/HmsScanFrame;-><init>(Landroid/graphics/YuvImage;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance p4, Landroid/graphics/YuvImage;

    .line 45
    .line 46
    const/16 v4, 0x11

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v2, p4

    .line 50
    move-object v3, p1

    .line 51
    move v5, p2

    .line 52
    move v6, p3

    .line 53
    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lcom/huawei/hms/ml/scan/HmsScanFrame;

    .line 57
    .line 58
    invoke-direct {p2, p4}, Lcom/huawei/hms/ml/scan/HmsScanFrame;-><init>(Landroid/graphics/YuvImage;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->getCameraFrameOptions()Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p1, p2, p3}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decode(Landroid/content/Context;Lcom/huawei/hms/ml/scan/HmsScanFrame;Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;)Lcom/huawei/hms/ml/scan/HmsScanResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanResult;->getHmsScans()[Lcom/huawei/hms/ml/scan/HmsScan;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide p2

    .line 81
    sub-long/2addr p2, v0

    .line 82
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p0, p1, p5, p2}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 91
    .line 92
    const-string p3, "ScanView Exception decodeFrameNv21 decodeFrame: "

    .line 93
    .line 94
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    sget-object p3, Lcre;->a:Lcre;

    .line 98
    .line 99
    invoke-virtual {p3, p2}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 107
    .line 108
    const-string p3, "ScanView Exception HmsImageAnalyzer decodeFrameNv21 OutOfMemoryError: "

    .line 109
    .line 110
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    sget-object p3, Lcre;->a:Lcre;

    .line 114
    .line 115
    invoke-virtual {p3, p2}, Lcre;->b(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_3
    return-void
.end method

.method public static synthetic e(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->albumAnalyzerOptions_delegate$lambda$1(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraAnalyzerOptions_delegate$lambda$0(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAlbumAnalyzerOptions()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->albumAnalyzerOptions$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getCameraAnalyzerOptions()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraAnalyzerOptions$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getCameraFrameOptions()Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->cameraFrameOptions$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getHmsScanAnalyzerOptions(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;
    .locals 9

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setPhotoMode(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getScanType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "1"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    .line 23
    .line 24
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->AZTEC_SCAN_TYPE:I

    .line 25
    .line 26
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->DATAMATRIX_SCAN_TYPE:I

    .line 27
    .line 28
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    .line 29
    .line 30
    filled-new-array {v1, v2, v3}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "2"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    sget v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    .line 47
    .line 48
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    .line 49
    .line 50
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    .line 51
    .line 52
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    .line 53
    .line 54
    sget v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    .line 55
    .line 56
    sget v5, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    .line 57
    .line 58
    sget v6, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    .line 59
    .line 60
    sget v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    .line 61
    .line 62
    sget v8, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    .line 63
    .line 64
    filled-new-array/range {v1 .. v8}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    new-array v0, v0, [I

    .line 74
    .line 75
    const/16 v1, 0x1fff

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->create()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "create(...)"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object p1
.end method

.method private final getHmsScanFrameOptions(Z)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;
    .locals 9

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->setMultiMode(Z)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->setPhotoMode(Z)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getScanType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "1"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    .line 28
    .line 29
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->AZTEC_SCAN_TYPE:I

    .line 30
    .line 31
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->DATAMATRIX_SCAN_TYPE:I

    .line 32
    .line 33
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    .line 34
    .line 35
    filled-new-array {v1, v2, v3}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "2"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget v0, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    .line 52
    .line 53
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    .line 54
    .line 55
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    .line 56
    .line 57
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    .line 58
    .line 59
    sget v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    .line 60
    .line 61
    sget v5, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    .line 62
    .line 63
    sget v6, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    .line 64
    .line 65
    sget v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    .line 66
    .line 67
    sget v8, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    .line 68
    .line 69
    filled-new-array/range {v1 .. v8}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [I

    .line 79
    .line 80
    const/16 v1, 0x1fff

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanFrameOptions$Creator;->create()Lcom/huawei/hms/ml/scan/HmsScanFrameOptions;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "create(...)"

    .line 90
    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object p1
.end method

.method private final handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    aget-object v1, p1, v0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    aget-object v1, p1, v0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getZoomValue()D

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 30
    .line 31
    cmpg-double v1, v4, v6

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p3, Lsk8;->c:Lsk8;

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->tag:Ljava/lang/String;

    .line 39
    .line 40
    aget-object v4, p1, v0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getZoomValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " HmsScanImageAnalyzer zoomValue is  "

    .line 55
    .line 56
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p3, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    aget-object p1, p1, v0

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getZoomValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-interface {p2, v0, v1}, Lxka;->b(D)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    :goto_0
    aget-object v1, p1, v0

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    sget-object v1, Lsk8;->c:Lsk8;

    .line 93
    .line 94
    iget-object v4, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->tag:Ljava/lang/String;

    .line 95
    .line 96
    aget-object v5, p1, v0

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " HmsScanImageAnalyzer \u8bc6\u522b\u5230\u5185\u5bb9\uff1a"

    .line 111
    .line 112
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v1, v4, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    array-length v2, p1

    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_1
    if-ge v3, v2, :cond_4

    .line 133
    .line 134
    aget-object v4, p1, v3

    .line 135
    .line 136
    iget-object v5, v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v5}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_3

    .line 146
    .line 147
    new-instance v6, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 148
    .line 149
    sget-object v7, Lwx6;->a:Lwx6;

    .line 150
    .line 151
    iget v8, v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 152
    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v7, v8}, Lwx6;->c(Ljava/lang/Integer;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    iget v4, v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 162
    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v7, v4}, Lwx6;->b(Ljava/lang/Integer;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-direct {v6, v5, v8, v4}, Lteam/opay/opb/qrcode/core/data/DecodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_5

    .line 185
    .line 186
    new-instance p1, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 187
    .line 188
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {p1, v0, p3, v1}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p2, p1}, Lxka;->a(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic handleDecodeResult$default(Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;[Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->handleDecodeResult([Lcom/huawei/hms/ml/scan/HmsScan;Lxka;Ljava/lang/Long;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public analyseImage(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V
    .locals 1
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lxka;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "image"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callback"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    move-result-object p2

    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->decodeFrame(Landroid/media/Image;Landroid/graphics/Rect;Lxka;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->decodeBitmapWithCamera(Landroid/media/Image;Landroid/graphics/Rect;Lxka;)V

    :goto_0
    return-void
.end method

.method public analyseImage([BIIZLandroid/graphics/Rect;Lxka;)V
    .locals 6
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lxka;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p4, "data"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callback"

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    move-result-object p4

    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    if-ne p4, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 5
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->decodeFrameNv21([BIILandroid/graphics/Rect;Lxka;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 6
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->decodeBitmapNv21([BIILandroid/graphics/Rect;Lxka;)V

    :goto_0
    return-void
.end method

.method public decodeAlbumImage(Landroid/net/Uri;)V
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    sget-object v2, Lbl2;->a:Lbl2;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    move-object v4, p1

    .line 23
    invoke-virtual/range {v2 .. v7}, Lbl2;->a(Landroid/content/Context;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;ZZ)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/graphics/Bitmap;

    .line 32
    .line 33
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    sub-long/2addr v3, v0

    .line 44
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 55
    .line 56
    invoke-direct {v2, v0, p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v3, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;

    .line 68
    .line 69
    invoke-direct {v3, v0}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v2, p1, v0}, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->decodeBitmap(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;Landroidx/lifecycle/MutableLiveData;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    sub-long/2addr v2, v0

    .line 92
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v9, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 97
    .line 98
    const/16 v7, 0x1f

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    move-object v1, v9

    .line 107
    invoke-direct/range {v1 .. v8}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v9, p1}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->h(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 122
    .line 123
    invoke-direct {v1, v0, v9}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public getScanSDK()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "HMS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;

    .line 2
    .line 3
    return-object v0
.end method

.method public initSdk(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scanType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->setScanType(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lwx6;->a:Lwx6;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lwx6;->d(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setDebugBitmapCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/analyzer/HmsImageAnalyzer;->mDebugBitmapCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
