.class public final Lteam/opay/opb/qrcode/scan/AlbumViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "AlbumViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J3\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\'\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001d\u0010-\u001a\u0008\u0012\u0004\u0012\u00020$0(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scan/AlbumViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;)V",
        "",
        "code",
        "barcodeFormat",
        "",
        "isDecodeLocalBitmap",
        "decodeTime",
        "",
        "x",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "Landroid/net/Uri;",
        "uri",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
        "zxingScannerView",
        "u",
        "(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V",
        "Landroid/graphics/Bitmap;",
        "sourceBitmap",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "bitmapInfo",
        "v",
        "(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Landroidx/lifecycle/SavedStateHandle;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "_albumDecodeResult",
        "Landroidx/lifecycle/LiveData;",
        "e",
        "Landroidx/lifecycle/LiveData;",
        "w",
        "()Landroidx/lifecycle/LiveData;",
        "albumDecodeResult",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "savedStateHandle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->e:Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic r(Lteam/opay/opb/qrcode/scan/AlbumViewModel;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->v(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->b:Landroid/app/Application;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final u(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;
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
    const-string v0, "performance"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "zxingScannerView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v3, v0

    .line 28
    move-object v4, p0

    .line 29
    move-object v5, p1

    .line 30
    move-object v6, p2

    .line 31
    move-object v7, p3

    .line 32
    invoke-direct/range {v3 .. v8}, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;-><init>(Lteam/opay/opb/qrcode/scan/AlbumViewModel;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Ljr2;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v4, v0

    .line 39
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final v(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v10

    .line 10
    mul-int v2, v0, v10

    .line 11
    .line 12
    new-array v11, v2, [I

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object/from16 v2, p2

    .line 18
    .line 19
    move-object v3, v11

    .line 20
    move v5, v0

    .line 21
    move v8, v0

    .line 22
    move v9, v10

    .line 23
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v4, v11, v0, v10}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->A([III)Lcom/google/zxing/RGBLuminanceSource;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    .line 40
    .line 41
    new-instance v7, Lcom/google/zxing/common/HybridBinarizer;

    .line 42
    .line 43
    invoke-direct {v7, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 56
    .line 57
    .line 58
    move-result-object v5
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :catchall_1
    move-exception v0

    .line 79
    goto/16 :goto_a

    .line 80
    .line 81
    :catch_2
    move-exception v0

    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    sub-long/2addr v5, v2

    .line 92
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v6, v1, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    new-instance v7, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 99
    .line 100
    new-instance v14, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v8, v14

    .line 120
    invoke-direct/range {v8 .. v13}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v7, v5, v14}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .line 128
    .line 129
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    .line 137
    .line 138
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_2

    .line 143
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    .line 146
    .line 147
    :cond_2
    return-void

    .line 148
    :goto_3
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    sub-long/2addr v5, v2

    .line 153
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget-object v6, v1, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 158
    .line 159
    new-instance v7, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 160
    .line 161
    new-instance v14, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    const/4 v9, 0x1

    .line 180
    move-object v8, v14

    .line 181
    invoke-direct/range {v8 .. v13}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v7, v5, v14}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    .line 190
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 197
    .line 198
    .line 199
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_4

    .line 204
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    .line 207
    .line 208
    :cond_4
    return-void

    .line 209
    :goto_4
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    if-eqz v4, :cond_5

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 216
    .line 217
    .line 218
    :cond_5
    throw v0

    .line 219
    :catch_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->getMultiFormatReader()Lcom/google/zxing/MultiFormatReader;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_6
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    sub-long/2addr v6, v2

    .line 232
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v5, :cond_7

    .line 237
    .line 238
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eqz v4, :cond_7

    .line 243
    .line 244
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    const/4 v6, 0x1

    .line 249
    xor-int/2addr v4, v6

    .line 250
    if-ne v4, v6, :cond_7

    .line 251
    .line 252
    iget-object v4, v1, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 253
    .line 254
    new-instance v7, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;

    .line 255
    .line 256
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-direct {v7, v8, v5, v6, v0}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v7}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_7
    iget-object v4, v1, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 276
    .line 277
    new-instance v5, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 278
    .line 279
    invoke-direct {v5, v0}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    .line 284
    .line 285
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_8

    .line 290
    .line 291
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v4

    .line 302
    sub-long/2addr v4, v2

    .line 303
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    iget-object v3, v1, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 308
    .line 309
    new-instance v4, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 310
    .line 311
    new-instance v11, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->d()Ljava/lang/Double;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->b()Ljava/lang/Double;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual/range {p3 .. p3}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->a()Ljava/lang/Double;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    const/4 v6, 0x0

    .line 330
    move-object v5, v11

    .line 331
    invoke-direct/range {v5 .. v10}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 332
    .line 333
    .line 334
    invoke-direct {v4, v2, v11}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_8

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_8
    :goto_9
    return-void

    .line 348
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_9

    .line 353
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    .line 356
    .line 357
    :cond_9
    throw v0
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->e:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
