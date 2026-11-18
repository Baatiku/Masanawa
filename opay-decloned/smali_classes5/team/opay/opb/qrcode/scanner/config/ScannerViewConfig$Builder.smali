.class public final Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
.super Ljava/lang/Object;
.source "ScannerViewConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0019R\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001bR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001bR\u0016\u0010\u0008\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001bR\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001bR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001cR\u0016\u0010$\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001cR\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;",
        "",
        "<init>",
        "()V",
        "",
        "cameraType",
        "b",
        "(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;",
        "scanSDK",
        "g",
        "scanType",
        "h",
        "scanFrom",
        "e",
        "",
        "scanFullScreen",
        "f",
        "(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;",
        "enable",
        "c",
        "d",
        "Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;",
        "a",
        "()Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;",
        "Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;",
        "Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;",
        "defaultCameraConfig",
        "Ljava/lang/String;",
        "Z",
        "isUseDefaultFinderView",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "customFrameRect",
        "i",
        "isEnableAutoZoom",
        "j",
        "isEnableGestureZoom",
        "",
        "k",
        "Ljava/lang/Float;",
        "topOffsetRatio",
        "",
        "l",
        "I",
        "topOffset",
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
.field public final a:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;-><init>(Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->a:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 11
    .line 12
    const-string v1, "default"

    .line 13
    .line 14
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->i()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->d:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v0, La4d;->w:La4d$a;

    .line 29
    .line 30
    invoke-virtual {v0}, La4d$a;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->e:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->f:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->g:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->i:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->j:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v13, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->f:Z

    .line 12
    .line 13
    iget-boolean v6, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->g:Z

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->h:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget-boolean v8, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->i:Z

    .line 18
    .line 19
    iget-boolean v9, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->j:Z

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->k:Ljava/lang/Float;

    .line 22
    .line 23
    iget v11, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->l:I

    .line 24
    .line 25
    const/4 v12, 0x0

    .line 26
    move-object v0, v13

    .line 27
    invoke-direct/range {v0 .. v12}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/graphics/Rect;ZZLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    return-object v13
.end method

.method public final b(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->i:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scanFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
