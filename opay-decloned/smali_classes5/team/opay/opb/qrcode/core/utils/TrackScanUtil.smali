.class public final Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
.super Ljava/lang/Object;
.source "TrackScanUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JG\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022.\u0010\u0013\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\r\u0010\u001c\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\r\u0010\u001d\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\r\u0010\u001e\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ1\u0010\"\u001a\u00020\u00142\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\"\u0010#J%\u0010&\u001a\u00020\u00142\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u0014\u00a2\u0006\u0004\u0008(\u0010\u001aJ\r\u0010)\u001a\u00020\u0014\u00a2\u0006\u0004\u0008)\u0010\u001aJ\r\u0010*\u001a\u00020\u0014\u00a2\u0006\u0004\u0008*\u0010\u001aJ%\u0010.\u001a\u00020\u00142\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00142\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00080\u00101J1\u00102\u001a\u00020\u00142\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00082\u0010#J\u0019\u00103\u001a\u00020\u00142\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00083\u00101J%\u00104\u001a\u00020\u00142\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u00084\u0010/J1\u00106\u001a\u00020\u00142\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00086\u0010#J1\u00107\u001a\u00020\u00142\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00087\u0010#J\u0081\u0001\u0010=\u001a\u00020\u00142\u0006\u00108\u001a\u00020\u00042\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008=\u0010>J\r\u0010?\u001a\u00020\u0014\u00a2\u0006\u0004\u0008?\u0010\u001aJ\u0019\u0010@\u001a\u00020\u00142\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008@\u00101J\u0010\u0010A\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008A\u0010BJ\u0010\u0010D\u001a\u00020CH\u00d6\u0001\u00a2\u0006\u0004\u0008D\u0010EJ\u001a\u0010G\u001a\u00020\u00042\u0008\u0010F\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008G\u0010HR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010BR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008\u0005\u0010NR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010J\u001a\u0004\u0008O\u0010BR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u0010J\u001a\u0004\u0008Q\u0010BR\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010J\u001a\u0004\u0008S\u0010BR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010\u0018\"\u0004\u0008W\u0010XR\u0017\u0010\u000b\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008Y\u0010J\u001a\u0004\u0008Z\u0010BR\u001b\u0010^\u001a\u00020[8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\\\u001a\u0004\u0008T\u0010]R\'\u0010a\u001a\u000e\u0012\u0004\u0012\u00020_\u0012\u0004\u0012\u00020\t0\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\\\u001a\u0004\u0008Y\u0010`R\"\u0010e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010M\u001a\u0004\u0008b\u0010N\"\u0004\u0008c\u0010dR\"\u0010h\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010M\u001a\u0004\u0008f\u0010N\"\u0004\u0008g\u0010d\u00a8\u0006i"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "",
        "",
        "scanSDK",
        "",
        "isOldScanUrl",
        "from",
        "cameraType",
        "version",
        "",
        "scanStartTime",
        "scanID",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "",
        "Lkotlin/Pair;",
        "c",
        "()[Lkotlin/Pair;",
        "event",
        "params",
        "",
        "k",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "i",
        "()J",
        "j",
        "()V",
        "h",
        "B",
        "x",
        "y",
        "qrContentSubType",
        "qrContentType",
        "decodeTime",
        "C",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "errorCode",
        "errorMsg",
        "z",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "s",
        "w",
        "q",
        "getBitmapTime",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "info",
        "o",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "p",
        "(Ljava/lang/String;)V",
        "n",
        "m",
        "l",
        "qrFrom",
        "u",
        "D",
        "isSuccess",
        "apiTime",
        "httpCode",
        "bizType",
        "serverScanId",
        "v",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "t",
        "r",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "getScanSDK",
        "b",
        "Z",
        "()Z",
        "getFrom",
        "d",
        "getCameraType",
        "e",
        "getVersion",
        "f",
        "J",
        "getScanStartTime",
        "setScanStartTime",
        "(J)V",
        "g",
        "getScanID",
        "Landroid/content/Context;",
        "Lid8;",
        "()Landroid/content/Context;",
        "context",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "()Lkotlin/Pair;",
        "deviceInfo",
        "getHasDecodeScanSuccess",
        "setHasDecodeScanSuccess",
        "(Z)V",
        "hasDecodeScanSuccess",
        "getHasDecodeAlbumSuccess",
        "setHasDecodeAlbumSuccess",
        "hasDecodeAlbumSuccess",
        "opay-qrcode-core_release"
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:J

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scanID"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 5
    iput-object p3, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 8
    iput-wide p6, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 9
    iput-object p8, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 10
    new-instance p1, Lire;

    invoke-direct {p1}, Lire;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->h:Lid8;

    .line 11
    new-instance p1, Ljre;

    invoke-direct {p1}, Ljre;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->i:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 12
    const-string v3, "default"

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p5

    :goto_4
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_5

    :cond_5
    move-wide v5, p6

    :goto_5
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_6

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p8

    :goto_6
    move-object p1, p0

    move-object p2, v0

    move p3, v2

    move-object p4, v3

    move-object p5, v4

    move-object p6, v1

    move-wide/from16 p7, v5

    move-object/from16 p9, v7

    .line 15
    invoke-direct/range {p1 .. p9}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic A(Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lkotlin/Pair;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final e()Lkotlin/Pair;
    .locals 1

    .line 1
    sget-object v0, Lk93;->a:Lk93;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk93;->g()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final B()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->j:Z

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
    invoke-virtual {p0, p1, v2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c()[Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "scanSdk"

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "scanId"

    .line 10
    .line 11
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->i()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "time"

    .line 26
    .line 27
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-boolean v3, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "isOldScanUrl"

    .line 38
    .line 39
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->h()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "memoryLevel"

    .line 52
    .line 53
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "from"

    .line 58
    .line 59
    iget-object v6, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "cameraType"

    .line 66
    .line 67
    iget-object v7, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, "version"

    .line 74
    .line 75
    iget-object v8, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v7, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/16 v8, 0x8

    .line 82
    .line 83
    new-array v8, v8, [Lkotlin/Pair;

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    aput-object v0, v8, v9

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    aput-object v1, v8, v0

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    aput-object v2, v8, v0

    .line 93
    .line 94
    const/4 v0, 0x3

    .line 95
    aput-object v3, v8, v0

    .line 96
    .line 97
    const/4 v0, 0x4

    .line 98
    aput-object v4, v8, v0

    .line 99
    .line 100
    const/4 v0, 0x5

    .line 101
    aput-object v5, v8, v0

    .line 102
    .line 103
    const/4 v0, 0x6

    .line 104
    aput-object v6, v8, v0

    .line 105
    .line 106
    const/4 v0, 0x7

    .line 107
    aput-object v7, v8, v0

    .line 108
    .line 109
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-array v1, v9, [Lkotlin/Pair;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, [Lkotlin/Pair;

    .line 120
    .line 121
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-wide v3, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 65
    .line 66
    iget-wide v5, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    return v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/Pair;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 15
    .line 16
    invoke-static {v2}, Lii8;->a(Z)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_1
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_2
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-wide v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 58
    .line 59
    invoke-static {v1, v2}, Lv3b;->a(J)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    return v0
.end method

.method public final i()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 6
    .line 7
    return-void
.end method

.method public final varargs k(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c()[Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lkotlin/collections/a;->y([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, [Lkotlin/Pair;

    .line 10
    .line 11
    sget-object v0, Lbre;->a:Lbre;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, p2

    .line 18
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, [Lkotlin/Pair;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, p2}, Lbre;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final l(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
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
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final m(Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k:Z

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
    invoke-virtual {p0, p1, v2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final o(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
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
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final p(Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final q()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final r(Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final s()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v5, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->f:J

    .line 12
    .line 13
    iget-object v7, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->g:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v9, "TrackScanUtil(scanSDK="

    .line 21
    .line 22
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", isOldScanUrl="

    .line 29
    .line 30
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", from="

    .line 37
    .line 38
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", cameraType="

    .line 45
    .line 46
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", version="

    .line 53
    .line 54
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", scanStartTime="

    .line 61
    .line 62
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", scanID="

    .line 69
    .line 70
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final v(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0, p1, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final w()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final x()V
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
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->j:Z

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
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k:Z

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
    invoke-virtual {p0, v0, v2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "errorMsg"

    .line 8
    .line 9
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p1, v0, v1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    aput-object p2, v0, p1

    .line 21
    .line 22
    const-string p1, "qr_sdk_scan_fail"

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->k(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
