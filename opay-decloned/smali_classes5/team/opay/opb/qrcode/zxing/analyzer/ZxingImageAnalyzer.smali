.class public final Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;
.super Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
.source "ZxingImageAnalyzer.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J3\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\'\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010(\u001a\u0004\u0018\u00010\u00162\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010-H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u000f2\u0006\u00100\u001a\u00020*H\u0016\u00a2\u0006\u0004\u00081\u00102J\'\u00105\u001a\u00020\u000f2\u0016\u00104\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u000103H\u0016\u00a2\u0006\u0004\u00085\u00106J\u001b\u00109\u001a\u0008\u0012\u0004\u0012\u000208072\u0006\u00100\u001a\u00020*\u00a2\u0006\u0004\u00089\u0010:J1\u0010?\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008?\u0010@JA\u0010?\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008?\u0010AJ\u0017\u0010D\u001a\u00020\u000f2\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008D\u0010ER\u0018\u0010G\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR&\u0010I\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010K\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010M\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010O\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\u00a8\u0006W"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "<init>",
        "()V",
        "",
        "data",
        "",
        "width",
        "height",
        "Landroid/graphics/Rect;",
        "framingRectInPreview",
        "Lxka;",
        "callback",
        "",
        "startTime",
        "",
        "commonAnalyseImage",
        "([BIILandroid/graphics/Rect;Lxka;J)V",
        "framingRect",
        "Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "buildLuminanceSource",
        "([BIILandroid/graphics/Rect;)Lcom/google/zxing/PlanarYUVLuminanceSource;",
        "Landroid/graphics/Bitmap;",
        "sourceBitmap",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "bitmapInfo",
        "decodeBitmap",
        "(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "",
        "Lcom/google/zxing/RGBLuminanceSource;",
        "buildRGBLuminanceSource",
        "([III)Lcom/google/zxing/RGBLuminanceSource;",
        "source",
        "Lcom/google/zxing/Result;",
        "retryDecode",
        "(Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;",
        "rotateY90",
        "([BII)[B",
        "Lcom/google/zxing/common/BitMatrix;",
        "bitMatrix",
        "bitMatrixToBitmap",
        "(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;",
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
        "",
        "Lcom/google/zxing/BarcodeFormat;",
        "getFormats",
        "(Ljava/lang/String;)Ljava/util/List;",
        "Landroid/media/Image;",
        "image",
        "",
        "isEnableZoom",
        "analyseImage",
        "(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V",
        "([BIIZLandroid/graphics/Rect;Lxka;)V",
        "Landroid/net/Uri;",
        "uri",
        "decodeAlbumImage",
        "(Landroid/net/Uri;)V",
        "Lcom/google/zxing/MultiFormatReader;",
        "mMultiFormatReader",
        "Lcom/google/zxing/MultiFormatReader;",
        "mDebugBitmapCallback",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "Lxka;",
        "mFrameWith",
        "Ljava/lang/Integer;",
        "mIsEnableZoom",
        "Z",
        "Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;",
        "autoZoomHelper$delegate",
        "Lid8;",
        "getAutoZoomHelper",
        "()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;",
        "autoZoomHelper",
        "opay-qrcode-zxing_release"
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
.field private final autoZoomHelper$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCallback:Lxka;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private mFrameWith:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsEnableZoom:Z

.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance v0, Llcg;

    .line 5
    .line 6
    invoke-direct {v0}, Llcg;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->autoZoomHelper$delegate:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method private static final autoZoomHelper_delegate$lambda$0()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final bitMatrixToBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    mul-int v0, v6, v7

    .line 10
    .line 11
    new-array v8, v0, [I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v7, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_1
    if-ge v2, v6, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    mul-int v3, v1, v6

    .line 27
    .line 28
    add-int/2addr v3, v2

    .line 29
    const/high16 v4, -0x1000000

    .line 30
    .line 31
    aput v4, v8, v3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    mul-int v3, v1, v6

    .line 35
    .line 36
    add-int/2addr v3, v2

    .line 37
    const/4 v4, -0x1

    .line 38
    aput v4, v8, v3

    .line 39
    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move-object v0, v8

    .line 50
    move v2, v6

    .line 51
    move v3, v6

    .line 52
    move v4, v7

    .line 53
    move-object v5, p1

    .line 54
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    move-object v0, p1

    .line 65
    move-object v1, v8

    .line 66
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 67
    .line 68
    .line 69
    return-object p1
.end method

.method private final buildLuminanceSource([BIILandroid/graphics/Rect;)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 4
    .line 5
    iget v4, p4, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget v5, p4, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    move-object v0, v9

    .line 36
    move-object v1, p1

    .line 37
    move v2, p2

    .line 38
    move v3, p3

    .line 39
    move v6, p2

    .line 40
    move v7, p3

    .line 41
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_2
    const/4 v9, 0x0

    .line 53
    :goto_3
    return-object v9
.end method

.method private final buildRGBLuminanceSource([III)Lcom/google/zxing/RGBLuminanceSource;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method private final commonAnalyseImage([BIILandroid/graphics/Rect;Lxka;J)V
    .locals 3

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/ranges/c;->f(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p2, p3}, Lkotlin/ranges/c;->f(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    iput-object v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mFrameWith:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object p5, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mCallback:Lxka;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->buildLuminanceSource([BIILandroid/graphics/Rect;)Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    .line 40
    .line 41
    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    .line 42
    .line 43
    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    .line 48
    .line 49
    :try_start_1
    iget-object p3, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_7

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :catch_1
    move-exception p1

    .line 63
    goto :goto_5

    .line 64
    :cond_1
    move-object p1, v0

    .line 65
    :goto_1
    :try_start_2
    iget-object p2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    :goto_2
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .line 71
    .line 72
    goto :goto_9

    .line 73
    :catch_2
    move-exception p1

    .line 74
    goto/16 :goto_d

    .line 75
    .line 76
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_4
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    :goto_4
    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 84
    .line 85
    .line 86
    goto :goto_8

    .line 87
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_6
    iget-object p1, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :catch_3
    :try_start_7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getScanType()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string p3, "1"

    .line 100
    .line 101
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_2

    .line 106
    .line 107
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->retryDecode(Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;

    .line 108
    .line 109
    .line 110
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 111
    goto :goto_6

    .line 112
    :cond_2
    move-object p1, v0

    .line 113
    :goto_6
    :try_start_8
    iget-object p2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_7
    iget-object p2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 119
    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 123
    .line 124
    .line 125
    :cond_3
    throw p1

    .line 126
    :cond_4
    :goto_8
    move-object p1, v0

    .line 127
    :cond_5
    :goto_9
    if-eqz p1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    goto :goto_a

    .line 134
    :cond_6
    move-object p2, v0

    .line 135
    :goto_a
    if-nez p2, :cond_7

    .line 136
    .line 137
    const-string p2, ""

    .line 138
    .line 139
    :cond_7
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-nez p3, :cond_a

    .line 144
    .line 145
    new-instance p3, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance p4, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 151
    .line 152
    if-eqz p1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    goto :goto_b

    .line 159
    :cond_8
    move-object v1, v0

    .line 160
    :goto_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sget-object v2, Libg;->a:Libg;

    .line 165
    .line 166
    if-eqz p1, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_c

    .line 173
    :cond_9
    move-object p1, v0

    .line 174
    :goto_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v2, p1}, Libg;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p4, p2, v1, p1}, Lteam/opay/opb/qrcode/core/data/DecodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide p1

    .line 192
    sub-long/2addr p1, p6

    .line 193
    new-instance p4, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 194
    .line 195
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    const/4 p3, 0x0

    .line 204
    invoke-direct {p4, p3, p1, p2}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p5, p4}, Lxka;->a(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 208
    .line 209
    .line 210
    goto :goto_e

    .line 211
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    sget-object p2, Lvk8;->c:Lvk8;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    new-instance p3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string p4, "onImageAvailableListener: "

    .line 226
    .line 227
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const/4 p3, 0x2

    .line 238
    invoke-static {p2, p1, v0, p3, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_a
    :goto_e
    return-void
.end method

.method public static synthetic d(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;D)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->initSdk$lambda$2$lambda$1(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;D)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final decodeBitmap(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    mul-int v0, v8, v9

    .line 10
    .line 11
    new-array v10, v0, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, v10

    .line 18
    move v3, v8

    .line 19
    move v6, v8

    .line 20
    move v7, v9

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    invoke-direct {p0, v10, v8, v9}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->buildRGBLuminanceSource([III)Lcom/google/zxing/RGBLuminanceSource;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 36
    .line 37
    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_1
    iget-object v2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 50
    .line 51
    .line 52
    move-result-object v3
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v2

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :catch_0
    move-exception v2

    .line 58
    goto :goto_2

    .line 59
    :catch_1
    move-exception v2

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :catchall_1
    move-exception p2

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :catch_2
    move-exception v2

    .line 74
    goto/16 :goto_8

    .line 75
    .line 76
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    sub-long/2addr v3, v0

    .line 84
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-instance v5, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 93
    .line 94
    new-instance v12, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    const/4 v7, 0x0

    .line 113
    move-object v6, v12

    .line 114
    invoke-direct/range {v6 .. v11}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v5, v3, v12}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .line 122
    .line 123
    :try_start_4
    iget-object v2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_2

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void

    .line 140
    :goto_3
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    sub-long/2addr v3, v0

    .line 145
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    new-instance v5, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 154
    .line 155
    new-instance v12, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    const/4 v7, 0x1

    .line 174
    move-object v6, v12

    .line 175
    invoke-direct/range {v6 .. v11}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v5, v3, v12}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    .line 183
    .line 184
    :try_start_6
    iget-object v2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 185
    .line 186
    if-eqz v2, :cond_3

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 189
    .line 190
    .line 191
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-nez p2, :cond_4

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    .line 199
    .line 200
    :cond_4
    return-void

    .line 201
    :goto_4
    :try_start_7
    iget-object v3, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 202
    .line 203
    if-eqz v3, :cond_5

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 206
    .line 207
    .line 208
    :cond_5
    throw v2

    .line 209
    :catch_3
    iget-object v2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 210
    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_6
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    sub-long/2addr v4, v0

    .line 220
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    if-eqz v3, :cond_8

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_8

    .line 231
    .line 232
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    const/4 v5, 0x1

    .line 237
    xor-int/2addr v4, v5

    .line 238
    if-ne v4, v5, :cond_8

    .line 239
    .line 240
    new-instance v4, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    new-instance v6, Lteam/opay/opb/qrcode/core/data/DecodeItem;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    if-nez v7, :cond_7

    .line 252
    .line 253
    const-string v7, ""

    .line 254
    .line 255
    :cond_7
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    sget-object v9, Libg;->a:Libg;

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v9, v3}, Libg;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-direct {v6, v7, v8, v3}, Lteam/opay/opb/qrcode/core/data/DecodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    new-instance v3, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;

    .line 284
    .line 285
    invoke-direct {v3, v5, v2, v4}, Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    new-instance v4, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;

    .line 293
    .line 294
    invoke-direct {v4, v3}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalResult;-><init>(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    new-instance v4, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;

    .line 306
    .line 307
    invoke-direct {v4, v2}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalNoQrCodeFound;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 311
    .line 312
    .line 313
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    if-nez p2, :cond_9

    .line 318
    .line 319
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    .line 321
    .line 322
    goto :goto_9

    .line 323
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    sub-long/2addr v3, v0

    .line 331
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v3, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;

    .line 340
    .line 341
    new-instance v10, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-virtual {p2}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    const/4 v5, 0x0

    .line 360
    move-object v4, v10

    .line 361
    invoke-direct/range {v4 .. v9}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v3, v0, v10}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    if-nez p2, :cond_9

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_9
    :goto_9
    return-void

    .line 378
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_a

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    .line 386
    .line 387
    :cond_a
    throw p2
.end method

.method public static synthetic e(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;Lcom/google/zxing/ResultPoint;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->initSdk$lambda$2(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;Lcom/google/zxing/ResultPoint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->autoZoomHelper_delegate$lambda$0()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getAutoZoomHelper()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->autoZoomHelper$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initSdk$lambda$2(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;Lcom/google/zxing/ResultPoint;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mIsEnableZoom:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mFrameWith:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-gtz v0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    invoke-direct {p0}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->getAutoZoomHelper()Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lmcg;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lmcg;-><init>(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, v0, v2}, Lteam/opay/opb/qrcode/zxing/internal/AutoZoomHelper;->a(Lcom/google/zxing/ResultPoint;ILkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final initSdk$lambda$2$lambda$1(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;D)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mIsEnableZoom:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mCallback:Lxka;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lxka;->b(D)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final retryDecode(Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getMatrix()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "getMatrix(...)"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, v1, v2, v3}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->rotateY90([BII)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v4, v1

    .line 45
    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    .line 49
    .line 50
    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :catch_1
    :cond_0
    :goto_0
    return-object v0
.end method

.method private final rotateY90([BII)[B
    .locals 6

    .line 1
    mul-int v0, p2, p3

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v1, p2, :cond_1

    .line 8
    .line 9
    add-int/lit8 v3, p3, -0x1

    .line 10
    .line 11
    :goto_1
    const/4 v4, -0x1

    .line 12
    if-ge v4, v3, :cond_0

    .line 13
    .line 14
    add-int/lit8 v4, v2, 0x1

    .line 15
    .line 16
    mul-int v5, v3, p2

    .line 17
    .line 18
    add-int/2addr v5, v1

    .line 19
    aget-byte v5, p1, v5

    .line 20
    .line 21
    aput-byte v5, v0, v2

    .line 22
    .line 23
    add-int/lit8 v3, v3, -0x1

    .line 24
    .line 25
    move v2, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method


# virtual methods
.method public analyseImage(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V
    .locals 9
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

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mIsEnableZoom:Z

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Lteam/opay/opb/qrcode/zxing/utils/I420Transfer;->a(Landroid/media/Image;I)[B

    move-result-object v2

    const-string p1, "getDataFromImage(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v1 .. v8}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->commonAnalyseImage([BIILandroid/graphics/Rect;Lxka;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    sget-object p2, Lvk8;->c:Lvk8;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "commonAnalyseImage error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p2, p1, p4, p3, p4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public analyseImage([BIIZLandroid/graphics/Rect;Lxka;)V
    .locals 9
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

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-boolean p4, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mIsEnableZoom:Z

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 11
    invoke-direct/range {v1 .. v8}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->commonAnalyseImage([BIILandroid/graphics/Rect;Lxka;J)V

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
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mIsEnableZoom:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    :try_start_0
    sget-object v2, Lbl2;->a:Lbl2;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getAppContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/16 v8, 0x10

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v4, p1

    .line 29
    invoke-static/range {v2 .. v9}, Lbl2;->b(Lbl2;Landroid/content/Context;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;ZZILjava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    sub-long/2addr v3, v0

    .line 50
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v3, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 61
    .line 62
    invoke-direct {v3, v0, p1}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v3, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;

    .line 74
    .line 75
    invoke-direct {v3, v0}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapSuccess;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    if-nez v2, :cond_1

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    invoke-direct {p0, v2, p1}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->decodeBitmap(Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    sub-long/2addr v2, v0

    .line 97
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v9, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 102
    .line 103
    const/16 v7, 0x1f

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 108
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    move-object v1, v9

    .line 112
    invoke-direct/range {v1 .. v8}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v9, p1}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->h(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getLiveData()Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v1, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;

    .line 127
    .line 128
    invoke-direct {v1, v0, v9}, Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scanType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Libg;->a:Libg;

    .line 15
    .line 16
    invoke-virtual {p1}, Libg;->c()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "2"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Libg;->a:Libg;

    .line 30
    .line 31
    invoke-virtual {p1}, Libg;->b()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Libg;->a:Libg;

    .line 37
    .line 38
    invoke-virtual {p1}, Libg;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    return-object p1
.end method

.method public getScanSDK()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "OPAY"

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
    const-class v0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;

    .line 2
    .line 3
    return-object v0
.end method

.method public initSdk(Ljava/lang/String;)V
    .locals 4
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
    sget-object v0, Lvk8;->c:Lvk8;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "zhj ZxingImageAnalyzer iImageAnalyzer hashCode:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->setScanType(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/EnumMap;

    .line 38
    .line 39
    const-class v1, Lcom/google/zxing/DecodeHintType;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->getFormats(Ljava/lang/String;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 54
    .line 55
    new-instance v1, Lncg;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lncg;-><init>(Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/zxing/analyzer/ZxingImageAnalyzer;->mDebugBitmapCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
