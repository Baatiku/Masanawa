.class public final Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;
.super Ljava/lang/Object;
.source "ScanABConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/core/common/ScanABConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\tJ\r\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\r\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\r\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\tJ\r\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\tJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "j",
        "()Z",
        "",
        "h",
        "()D",
        "i",
        "g",
        "d",
        "e",
        "c",
        "",
        "a",
        "()Ljava/lang/String;",
        "f",
        "k",
        "Lteam/opay/opb/qrcode/core/common/ScanABConfig;",
        "b",
        "()Lteam/opay/opb/qrcode/core/common/ScanABConfig;",
        "config",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getCameraType$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/common/base/OpbAbConfig;->Companion:Lteam/opay/opb/common/base/OpbAbConfig$Companion;

    .line 2
    .line 3
    const-class v0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 10
    .line 11
    return-object v0
.end method

.method public final c()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getHmsLengthH$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final d()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getHmsLengthL$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final e()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getHmsLengthM$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getScanSdk$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getZxingLengthH$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final h()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getZxingLengthL$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final i()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getZxingLengthM$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$isUseHmsScan$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->b()Lteam/opay/opb/qrcode/core/common/ScanABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->access$getUseHighPreviewSize$p(Lteam/opay/opb/qrcode/core/common/ScanABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
