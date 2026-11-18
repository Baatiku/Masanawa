.class public abstract Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
.super Ljava/lang/Object;
.source "IImageAnalyzer.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 @2\u00020\u0001:\u0001@B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0011\u001a\u00020\u000b2\u0016\u0010\u0010\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\'\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJA\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\'\u00a2\u0006\u0004\u0008\u001b\u0010\"J\u0017\u0010%\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#H\'\u00a2\u0006\u0004\u0008%\u0010&R\u001b\u0010,\u001a\u00020\'8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\"\u0010\n\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010-\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\rR\u001b\u00104\u001a\u0002008DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010)\u001a\u0004\u00082\u00103R \u00107\u001a\u0008\u0012\u0004\u0012\u000206058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R\u001d\u0010<\u001a\u0008\u0012\u0004\u0012\u0002060;8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\u00a8\u0006A"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "Lteam/opay/KeepNoProguard;",
        "<init>",
        "()V",
        "",
        "getScanSDK",
        "()Ljava/lang/String;",
        "Ljava/lang/Class;",
        "getSdkClass",
        "()Ljava/lang/Class;",
        "scanType",
        "",
        "initSdk",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "Landroid/graphics/Bitmap;",
        "debugBitmapCallback",
        "setDebugBitmapCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroid/media/Image;",
        "image",
        "",
        "isEnableZoom",
        "Landroid/graphics/Rect;",
        "framingRectInPreview",
        "Lxka;",
        "callback",
        "analyseImage",
        "(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V",
        "",
        "data",
        "",
        "width",
        "height",
        "([BIIZLandroid/graphics/Rect;Lxka;)V",
        "Landroid/net/Uri;",
        "uri",
        "decodeAlbumImage",
        "(Landroid/net/Uri;)V",
        "Landroid/content/Context;",
        "appContext$delegate",
        "Lid8;",
        "getAppContext",
        "()Landroid/content/Context;",
        "appContext",
        "Ljava/lang/String;",
        "getScanType",
        "setScanType",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance$delegate",
        "getPerformance",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
        "liveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "albumDecodeLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getAlbumDecodeLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "Companion",
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


# static fields
.field public static final Companion:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final iScanImageAnalyzer$delegate:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final albumDecodeLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appContext$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final performance$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scanType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->Companion:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer$Companion;

    .line 8
    .line 9
    new-instance v0, Lx87;

    .line 10
    .line 11
    invoke-direct {v0}, Lx87;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->iScanImageAnalyzer$delegate:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly87;

    .line 5
    .line 6
    invoke-direct {v0}, Ly87;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->appContext$delegate:Lid8;

    .line 14
    .line 15
    sget-object v0, La4d;->w:La4d$a;

    .line 16
    .line 17
    invoke-virtual {v0}, La4d$a;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->scanType:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Lz87;

    .line 24
    .line 25
    invoke-direct {v0}, Lz87;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->performance$delegate:Lid8;

    .line 33
    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->liveData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->albumDecodeLiveData:Landroidx/lifecycle/LiveData;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->performance_delegate$lambda$1()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getIScanImageAnalyzer$delegate$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->iScanImageAnalyzer$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final appContext_delegate$lambda$0()Landroid/content/Context;
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

.method public static synthetic b()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->iScanImageAnalyzer_delegate$lambda$3()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->appContext_delegate$lambda$0()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final iScanImageAnalyzer_delegate$lambda$3()Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v2, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 25
    .line 26
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getScanSDK()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->getSdkClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method private static final performance_delegate$lambda$1()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    sget-object v0, Lk93;->a:Lk93;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk93;->h()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public abstract analyseImage(Landroid/media/Image;ZLandroid/graphics/Rect;Lxka;)V
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
.end method

.method public abstract analyseImage([BIIZLandroid/graphics/Rect;Lxka;)V
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
.end method

.method public abstract decodeAlbumImage(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getAlbumDecodeLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->albumDecodeLiveData:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->appContext$delegate:Lid8;

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

.method public final getLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/DecodeLocalImageResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->liveData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->performance$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract getScanSDK()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getScanType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->scanType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getSdkClass()Ljava/lang/Class;
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
.end method

.method public abstract initSdk(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setDebugBitmapCallback(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public final setScanType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;->scanType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
