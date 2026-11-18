.class public final Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;
.super Ljava/lang/Object;
.source "CaptureScreenUtils.kt"

# interfaces
.implements Lteam/opay/pay/module/capturescreen/UriObserver$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010*R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010,R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00140-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u00101R$\u00108\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u0010>\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u00089\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;",
        "Lteam/opay/pay/module/capturescreen/UriObserver$a;",
        "<init>",
        "()V",
        "",
        "selfChange",
        "Landroid/net/Uri;",
        "uri",
        "",
        "a",
        "(ZLandroid/net/Uri;)V",
        "Landroid/content/Context;",
        "context",
        "h",
        "(Landroid/content/Context;)V",
        "Landroid/content/ContentResolver;",
        "contentResolver",
        "Landroid/database/Cursor;",
        "f",
        "(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;",
        "",
        "type",
        "k",
        "(Ljava/lang/String;)V",
        "Landroid/app/Activity;",
        "activity",
        "i",
        "(Landroid/app/Activity;)V",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "e",
        "(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;",
        "g",
        "(Ljava/lang/String;)Z",
        "b",
        "Landroid/content/ContentResolver;",
        "Lteam/opay/pay/module/capturescreen/UriObserver;",
        "c",
        "Lteam/opay/pay/module/capturescreen/UriObserver;",
        "videoObserver",
        "d",
        "imageObserver",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "mainHandler",
        "Landroid/content/Context;",
        "",
        "[Ljava/lang/String;",
        "KEYWORDS",
        "",
        "J",
        "screenTime",
        "Ljava/lang/Long;",
        "getLastImageShownTime",
        "()Ljava/lang/Long;",
        "setLastImageShownTime",
        "(Ljava/lang/Long;)V",
        "lastImageShownTime",
        "j",
        "Z",
        "getHasVideoShown",
        "()Z",
        "(Z)V",
        "hasVideoShown",
        "sdk_release"
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
.field public static final a:Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Landroid/content/ContentResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static c:Lteam/opay/pay/module/capturescreen/UriObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Lteam/opay/pay/module/capturescreen/UriObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final g:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:J

.field public static i:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->a:Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;

    .line 7
    .line 8
    const-string v15, "screenrecord"

    .line 9
    .line 10
    const-string v16, "screen_recording"

    .line 11
    .line 12
    const-string v1, "screenshot"

    .line 13
    .line 14
    const-string v2, "screenshots"

    .line 15
    .line 16
    const-string v3, "screen_shot"

    .line 17
    .line 18
    const-string v4, "screen-shot"

    .line 19
    .line 20
    const-string v5, "screen shot"

    .line 21
    .line 22
    const-string v6, "screencapture"

    .line 23
    .line 24
    const-string v7, "screen_capture"

    .line 25
    .line 26
    const-string v8, "screen-capture"

    .line 27
    .line 28
    const-string v9, "screen capture"

    .line 29
    .line 30
    const-string v10, "screencap"

    .line 31
    .line 32
    const-string v11, "screen_cap"

    .line 33
    .line 34
    const-string v12, "screen-cap"

    .line 35
    .line 36
    const-string v13, "screen cap"

    .line 37
    .line 38
    const-string v14, "screenrecorder"

    .line 39
    .line 40
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sput-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->g:[Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Landroid/os/HandlerThread;

    .line 47
    .line 48
    const-string v2, "uriobserver"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->e:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v1, Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Lteam/opay/pay/module/capturescreen/UriObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    .line 80
    .line 81
    sput-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->c:Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lteam/opay/pay/module/capturescreen/UriObserver;->a(Lteam/opay/pay/module/capturescreen/UriObserver$a;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 87
    .line 88
    invoke-direct {v1, v2}, Lteam/opay/pay/module/capturescreen/UriObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    .line 90
    .line 91
    sput-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->d:Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lteam/opay/pay/module/capturescreen/UriObserver;->a(Lteam/opay/pay/module/capturescreen/UriObserver$a;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;Landroid/widget/FrameLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->l(Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;Landroid/widget/FrameLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->d(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "image or video records "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->a:Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;

    .line 17
    .line 18
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final l(Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;Landroid/widget/FrameLayout;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->i:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Lteam/opay/core/android/ViewKt;->l(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public a(ZLandroid/net/Uri;)V
    .locals 18
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "video"

    .line 4
    .line 5
    const-string v2, ",  uri====="

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "uri"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v4, Ld00;->a:Ld00;

    .line 15
    .line 16
    invoke-virtual {v4}, Ld00;->e()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v5, Lfob;->a:Lfob;

    .line 24
    .line 25
    invoke-virtual {v5}, Lfob;->a()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    aget-object v5, v5, v6

    .line 31
    .line 32
    invoke-static {v4, v5}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_c

    .line 37
    .line 38
    sget-object v4, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->b:Landroid/content/ContentResolver;

    .line 39
    .line 40
    if-eqz v4, :cond_c

    .line 41
    .line 42
    sget-object v5, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->a:Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;

    .line 43
    .line 44
    invoke-virtual {v5, v4, v0}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_c

    .line 49
    .line 50
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v7, 0x0

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    move-object v5, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v5, v7

    .line 60
    :goto_0
    if-eqz v5, :cond_c

    .line 61
    .line 62
    :try_start_0
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-string v10, "toLowerCase(...)"

    .line 74
    .line 75
    const-string v11, "getDefault(...)"

    .line 76
    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-nez v9, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object v1, v0

    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_2
    :goto_1
    move-object v9, v3

    .line 101
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v13, "uriPath====="

    .line 107
    .line 108
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/4 v12, 0x2

    .line 121
    invoke-static {v9, v1, v6, v12, v7}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const-string v14, "date_added"

    .line 126
    .line 127
    const-string v15, "getString(...)"

    .line 128
    .line 129
    const-string v6, "_data"

    .line 130
    .line 131
    const-wide/16 v16, 0x0

    .line 132
    .line 133
    if-eqz v13, :cond_7

    .line 134
    .line 135
    :try_start_2
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/4 v9, -0x1

    .line 150
    if-le v6, v9, :cond_4

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    move-object v1, v7

    .line 154
    :goto_2
    if-eqz v1, :cond_5

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    move-object v3, v1

    .line 184
    :cond_5
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-le v6, v9, :cond_6

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    move-object v1, v7

    .line 200
    :goto_3
    if-eqz v1, :cond_9

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v16

    .line 210
    goto :goto_4

    .line 211
    :cond_7
    const-string v1, "images"

    .line 212
    .line 213
    const/4 v13, 0x0

    .line 214
    invoke-static {v9, v1, v13, v12, v7}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    const-string v1, "image"

    .line 221
    .line 222
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 223
    .line 224
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 254
    .line 255
    .line 256
    move-result-wide v16

    .line 257
    goto :goto_4

    .line 258
    :cond_8
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 259
    .line 260
    .line 261
    :cond_9
    :goto_4
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 262
    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v9, "type====="

    .line 269
    .line 270
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ",  data====="

    .line 277
    .line 278
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    sget-object v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->g:[Ljava/lang/String;

    .line 291
    .line 292
    array-length v1, v0

    .line 293
    const/4 v13, 0x0

    .line 294
    :goto_5
    if-ge v13, v1, :cond_b

    .line 295
    .line 296
    aget-object v2, v0, v13

    .line 297
    .line 298
    const/4 v6, 0x0

    .line 299
    invoke-static {v3, v2, v6, v12, v7}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_a

    .line 304
    .line 305
    sget-wide v9, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->h:J

    .line 306
    .line 307
    cmp-long v2, v16, v9

    .line 308
    .line 309
    if-lez v2, :cond_a

    .line 310
    .line 311
    sput-wide v16, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->h:J

    .line 312
    .line 313
    sget-object v0, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->e:Landroid/os/Handler;

    .line 314
    .line 315
    new-instance v1, Lyw1;

    .line 316
    .line 317
    invoke-direct {v1, v8}, Lyw1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_b
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .line 332
    invoke-static {v5, v7}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :goto_7
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    :catchall_1
    move-exception v0

    .line 338
    move-object v2, v0

    .line 339
    invoke-static {v5, v1}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw v2

    .line 343
    :cond_c
    :goto_8
    return-void
.end method

.method public final e(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->z0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getFragments(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ":"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string p1, "getLocalClassName(...)"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-object v0
.end method

.method public final f(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getDefault(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "toLowerCase(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const-string v0, ""

    .line 28
    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    const/16 v3, 0x1d

    .line 33
    .line 34
    const-string v4, "date_added"

    .line 35
    .line 36
    if-lt v2, v3, :cond_2

    .line 37
    .line 38
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "android:query-arg-sort-columns"

    .line 44
    .line 45
    filled-new-array {v4}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "android:query-arg-sort-direction"

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v2, "android:query-arg-limit"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2, v1, v0, v1}, Lxw1;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string v2, "video"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-static {v0, v2, v3, v5, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " desc limit 1"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    move-object v3, p1

    .line 98
    move-object v4, p2

    .line 99
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_0
    return-object p1

    .line 104
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    return-object v1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    sget-object p1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->i:Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    :goto_0
    sub-long/2addr v3, v5

    .line 27
    const-wide/32 v5, 0x2bf20

    .line 28
    .line 29
    .line 30
    cmp-long p1, v3, v5

    .line 31
    .line 32
    if-lez p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v0, "video"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    sget-boolean p1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->j:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    :goto_1
    return v1
.end method

.method public final h(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->f:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sput-object p1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->b:Landroid/content/ContentResolver;

    .line 15
    .line 16
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    sget-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->c:Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    sget-object v1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->d:Lteam/opay/pay/module/capturescreen/UriObserver;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final i(Landroid/app/Activity;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getApplicationContext(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-class v3, Lxt;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lxt;

    .line 26
    .line 27
    new-instance v2, Lteam/opay/core/api/graphql/ReportSrceenReq;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->e(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v2, v1}, Lteam/opay/core/api/graphql/ReportSrceenReq;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Lag8;

    .line 37
    .line 38
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v6, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils$reportScreen$1;

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-direct {v6, v0, v2, p1}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils$reportScreen$1;-><init>(Lxt;Lteam/opay/core/api/graphql/ReportSrceenReq;Ljr2;)V

    .line 50
    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld00;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const v1, 0x1020002

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->g(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    new-instance v2, Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, -0x2

    .line 41
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lzw1;

    .line 48
    .line 49
    invoke-direct {v3, v2, v1}, Lzw1;-><init>(Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;Landroid/widget/FrameLayout;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v3}, Lteam/opay/pay/module/capturescreen/CaptureScreenLayout;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "image"

    .line 56
    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lteam/opay/pay/module/capturescreen/CaptureScreenUtils;->i(Landroid/app/Activity;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
