.class public final Lteam/opay/opb/qrcode/core/common/ScanABConfig;
.super Lteam/opay/opb/common/base/OpbAbConfig;
.source "ScanABConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/opb/common/base/OpbAbConfig<",
        "Lteam/opay/opb/qrcode/core/common/ScanABConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00078\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u000e8\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/common/ScanABConfig;",
        "Lteam/opay/opb/common/base/OpbAbConfig;",
        "<init>",
        "()V",
        "isUseHmsScan",
        "",
        "zxingLengthL",
        "",
        "zxingLengthM",
        "zxingLengthH",
        "hmsLengthL",
        "hmsLengthM",
        "hmsLengthH",
        "cameraType",
        "",
        "scanSdk",
        "useHighPreviewSize",
        "featureName",
        "defaultValue",
        "Lorg/json/JSONObject;",
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
.field public static final Companion:Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cameraType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cameraType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hmsLengthH:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hms_length_H"
    .end annotation
.end field

.field private final hmsLengthL:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hms_length_l"
    .end annotation
.end field

.field private final hmsLengthM:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hms_length_m"
    .end annotation
.end field

.field private final isUseHmsScan:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isUseHmsScan"
    .end annotation
.end field

.field private final scanSdk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scanSdk"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final useHighPreviewSize:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useHighPreviewSize"
    .end annotation
.end field

.field private final zxingLengthH:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zxing_length_H"
    .end annotation
.end field

.field private final zxingLengthL:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zxing_length_l"
    .end annotation
.end field

.field private final zxingLengthM:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zxing_length_m"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->Companion:Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/common/base/OpbAbConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x4090e00000000000L    # 1080.0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthL:D

    .line 10
    .line 11
    const-wide v2, 0x4092c00000000000L    # 1200.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthM:D

    .line 17
    .line 18
    const-wide/high16 v4, 0x4099000000000000L    # 1600.0

    .line 19
    .line 20
    iput-wide v4, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthH:D

    .line 21
    .line 22
    iput-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthL:D

    .line 23
    .line 24
    iput-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthM:D

    .line 25
    .line 26
    iput-wide v4, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthH:D

    .line 27
    .line 28
    const-string v0, "cameraX"

    .line 29
    .line 30
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->cameraType:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    iput-object v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->scanSdk:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->useHighPreviewSize:Z

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$getCameraType$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->cameraType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHmsLengthH$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthH:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getHmsLengthL$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthL:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getHmsLengthM$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthM:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/common/base/OpbAbConfig;->getOpbAbConfig(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getScanSdk$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->scanSdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUseHighPreviewSize$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->useHighPreviewSize:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getZxingLengthH$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthH:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getZxingLengthL$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthL:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getZxingLengthM$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthM:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$isUseHmsScan$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->isUseHmsScan:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isUseHmsScan"

    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->isUseHmsScan:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "zxing_length_l"

    .line 14
    .line 15
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthL:D

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "zxing_length_m"

    .line 21
    .line 22
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthM:D

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "zxing_length_H"

    .line 28
    .line 29
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->zxingLengthH:D

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "hms_length_l"

    .line 35
    .line 36
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthL:D

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "hms_length_m"

    .line 42
    .line 43
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthM:D

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "hms_length_H"

    .line 49
    .line 50
    iget-wide v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->hmsLengthH:D

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "cameraType"

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->cameraType:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "scanSdk"

    .line 63
    .line 64
    iget-object v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->scanSdk:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "useHighPreviewSize"

    .line 70
    .line 71
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->useHighPreviewSize:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opb_feature_scan_config"

    .line 2
    .line 3
    return-object v0
.end method
