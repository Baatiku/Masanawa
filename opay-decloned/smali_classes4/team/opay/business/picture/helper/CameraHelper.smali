.class public final Lteam/opay/business/picture/helper/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/helper/CameraHelper$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R$\u0010)\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/business/picture/helper/CameraHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "sizeKb",
        "",
        "drawWaterTime",
        "<init>",
        "(Landroid/content/Context;IZ)V",
        "",
        "u",
        "()V",
        "cameraType",
        "s",
        "(I)V",
        "q",
        "Landroid/net/Uri;",
        "uri",
        "o",
        "(Landroid/net/Uri;)V",
        "j",
        "a",
        "Landroid/content/Context;",
        "b",
        "I",
        "c",
        "Z",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "d",
        "Lid8;",
        "m",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "e",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "n",
        "()Lteam/opay/business/picture/helper/PickViewWrapper;",
        "w",
        "(Lteam/opay/business/picture/helper/PickViewWrapper;)V",
        "uriCallBack",
        "business-picture_release"
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
.field public a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lteam/opay/business/picture/helper/PickViewWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lteam/opay/business/picture/helper/CameraHelper;->b:I

    .line 4
    iput-boolean p3, p0, Lteam/opay/business/picture/helper/CameraHelper;->c:Z

    .line 5
    new-instance p1, Lvt1;

    invoke-direct {p1}, Lvt1;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper;->d:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x64

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/picture/helper/CameraHelper;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/picture/helper/CameraHelper;->r(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;ILandroid/content/Intent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/picture/helper/CameraHelper;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/helper/CameraHelper;->v(Lteam/opay/business/picture/helper/CameraHelper;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/helper/CameraHelper;->l(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/picture/helper/CameraHelper;->p()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(ILteam/opay/business/picture/helper/CameraHelper;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/picture/helper/CameraHelper;->t(ILteam/opay/business/picture/helper/CameraHelper;ILandroid/content/Intent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/business/picture/helper/CameraHelper;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/helper/CameraHelper;->k(Lteam/opay/business/picture/helper/CameraHelper;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/business/picture/helper/CameraHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/business/picture/helper/CameraHelper;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lteam/opay/business/picture/helper/CameraHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/picture/helper/CameraHelper;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static final k(Lteam/opay/business/picture/helper/CameraHelper;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lmd1;->a:Lmd1;

    .line 3
    .line 4
    const/16 v2, -0x5a

    .line 5
    .line 6
    invoke-virtual {v1, p1, v2}, Lmd1;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v2, p0, Lteam/opay/business/picture/helper/CameraHelper;->b:I

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lmd1;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    sget-object v1, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v3, "compress_camera"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lteam/opay/business/picture/internal/CameraXManager;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lid1;->a:Lid1;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "getAbsolutePath(...)"

    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1, v3}, Lid1;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Lut1;

    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Lut1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    invoke-static {v1, v2, p1, p0, v0}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lfk8;->c:Lfk8;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "----clipBitmap -> ex = "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 v1, 0x2

    .line 85
    invoke-static {p1, p0, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public static final l(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/helper/CameraHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "fromFile(...)"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "image/jpeg"

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/picture/helper/PickViewWrapper;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final p()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final r(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p3, -0x1

    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "fromFile(...)"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/business/picture/helper/CameraHelper;->o(Landroid/net/Uri;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final t(ILteam/opay/business/picture/helper/CameraHelper;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_3

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const/16 v1, 0x21

    .line 10
    .line 11
    const-string v2, "KEY_URI"

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    const-class v0, Landroid/net/Uri;

    .line 16
    .line 17
    invoke-static {p3, v2, v0}, Lchd;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Landroid/os/Parcelable;

    .line 22
    .line 23
    move-object p2, p3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :catch_0
    :goto_0
    check-cast p2, Landroid/net/Uri;

    .line 30
    .line 31
    :cond_1
    if-eqz p2, :cond_3

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    if-ne p0, p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lteam/opay/business/picture/helper/CameraHelper;->j(Landroid/net/Uri;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1, p2}, Lteam/opay/business/picture/helper/CameraHelper;->o(Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final v(Lteam/opay/business/picture/helper/CameraHelper;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/business/picture/helper/CameraHelper$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    if-eq p1, p0, :cond_2

    .line 19
    .line 20
    const/4 p0, 0x3

    .line 21
    if-ne p1, p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 25
    .line 26
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/CameraHelper;->q()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final j(Landroid/net/Uri;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/CameraHelper;->m()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Landroid/net/Uri;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()Lteam/opay/business/picture/helper/PickViewWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(Landroid/net/Uri;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/CameraHelper;->m()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Landroid/net/Uri;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "camera"

    .line 11
    .line 12
    const-string v2, ".jpg"

    .line 13
    .line 14
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Leu1;->a:Leu1;

    .line 25
    .line 26
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, v1}, Leu1;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lteam/opay/business/picture/helper/ResultProxy;

    .line 36
    .line 37
    invoke-direct {v3}, Lteam/opay/business/picture/helper/ResultProxy;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Lteam/opay/business/picture/helper/ResultProxy;->f(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Lxt1;

    .line 45
    .line 46
    invoke-direct {v3, p0, v1}, Lxt1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lteam/opay/business/picture/helper/ResultProxy;->e(Lkotlin/jvm/functions/Function2;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Lteam/opay/business/picture/helper/ResultProxy;->d(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lud;->a:Lud;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "opay://common/pick/customCamera?launchFrom=2&cameraType="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v0, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lteam/opay/business/picture/helper/ResultProxy;

    .line 34
    .line 35
    invoke-direct {v2}, Lteam/opay/business/picture/helper/ResultProxy;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lteam/opay/business/picture/helper/ResultProxy;->f(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Lyt1;

    .line 43
    .line 44
    invoke-direct {v2, p1, p0}, Lyt1;-><init>(ILteam/opay/business/picture/helper/CameraHelper;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lteam/opay/business/picture/helper/ResultProxy;->e(Lkotlin/jvm/functions/Function2;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v1}, Lteam/opay/business/picture/helper/ResultProxy;->d(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Ldob;->a:Ldob;

    .line 11
    .line 12
    sget-object v2, Lteam/opay/opb/permission/PermRequest;->b:Lteam/opay/opb/permission/PermRequest$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/opb/permission/PermRequest$Companion;->a()Lteam/opay/opb/permission/PermRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Leob;->a:Leob;

    .line 19
    .line 20
    invoke-virtual {v3}, Leob;->a()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    array-length v4, v3

    .line 25
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, [Ljava/lang/String;

    .line 30
    .line 31
    new-instance v4, Lwt1;

    .line 32
    .line 33
    invoke-direct {v4, p0}, Lwt1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2, v3, v4}, Ldob;->a(Ljava/lang/Object;Lteam/opay/opb/permission/PermRequest;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final w(Lteam/opay/business/picture/helper/PickViewWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/business/picture/helper/PickViewWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    return-void
.end method
