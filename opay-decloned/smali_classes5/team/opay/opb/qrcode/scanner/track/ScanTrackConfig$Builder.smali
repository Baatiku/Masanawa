.class public final Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
.super Ljava/lang/Object;
.source "ScanTrackConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0007J\r\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0015R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0016R\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0015R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0015R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;",
        "",
        "<init>",
        "()V",
        "",
        "scanSDK",
        "e",
        "(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;",
        "",
        "isOldScanUrl",
        "d",
        "(Z)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;",
        "from",
        "c",
        "cameraType",
        "b",
        "version",
        "f",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "a",
        "()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "Ljava/lang/String;",
        "Z",
        "",
        "J",
        "scanStartTime",
        "g",
        "scanID",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:J

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "default"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->f:J

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->g:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v10, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->b:Z

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v6, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->f:J

    .line 14
    .line 15
    iget-object v8, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->g:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v0, v10

    .line 19
    invoke-direct/range {v0 .. v9}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    return-object v10
.end method

.method public final b(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cameraType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final d(Z)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scanSDK"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "version"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig$Builder;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
