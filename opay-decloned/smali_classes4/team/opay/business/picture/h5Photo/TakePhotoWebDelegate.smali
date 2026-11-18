.class public final Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "TakePhotoWebDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J,\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "webView",
        "Landroid/webkit/WebView;",
        "phoneMaxSize",
        "",
        "attach",
        "",
        "takePhotoAndUpload",
        "webFoundationJsData",
        "Lcom/opay/webview/WebFoundationJsData;",
        "showPickImageFragment",
        "jsData",
        "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
        "takePhoto",
        "handleResult",
        "uri",
        "Landroid/net/Uri;",
        "takePhotoData",
        "mimetype",
        "",
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
.field private context:Landroid/content/Context;

.field private phoneMaxSize:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->phoneMaxSize:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->showPickImageFragment$lambda$5$lambda$4$lambda$3$lambda$2(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->showPickImageFragment$lambda$5$lambda$4(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->takePhoto$lambda$7$lambda$6(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->handleResult$lambda$9$lambda$8(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->showPickImageFragment$lambda$5$lambda$1(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final handleResult(Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_5

    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, -0x58a7d764    # -2.9998036E-15f

    .line 9
    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const v2, -0x34686c8b    # -1.986737E7f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const v2, 0x71f5c476

    .line 19
    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "image/*"

    .line 25
    .line 26
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-nez p4, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "image/png"

    .line 34
    .line 35
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-nez p4, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const-string v1, "image/jpeg"

    .line 43
    .line 44
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_5

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    if-nez p4, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    invoke-virtual {p3, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->d(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lvy;->b()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v4, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;

    .line 65
    .line 66
    invoke-direct {v4, p2, p1, v0}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;-><init>(Landroid/net/Uri;Lcom/opay/webview/WebFoundationJsData;Ljr2;)V

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x3

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 74
    .line 75
    .line 76
    sget-object p1, Lteam/opay/business/picture/h5Photo/PhotoUploader;->f:Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;->a()Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Lafe;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lafe;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->r(Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->s(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    :goto_0
    iget-object p1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->context:Landroid/content/Context;

    .line 95
    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    const-string p1, "context"

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    move-object v0, p1

    .line 105
    :goto_1
    sget p1, Lteam/opay/business/picture/R$string;->picture_camera_file_not_support:I

    .line 106
    .line 107
    invoke-static {v0, p1}, Let;->u(Landroid/content/Context;I)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void
.end method

.method public static synthetic handleResult$default(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p4, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->handleResult(Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final handleResult$lambda$9$lambda$8(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "webView"

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/opay/webview/util/WebfoundationUtilsKt;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "javascript:setCameraPictureUrl(\'"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "\')"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private final showPickImageFragment(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "context"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-object v1, Lteam/opay/business/picture/PickImageSheetFragment;->s:Lteam/opay/business/picture/PickImageSheetFragment$Companion;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/business/picture/PickImageSheetFragment$Companion;->a()Lteam/opay/business/picture/PickImageSheetFragment;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lyee;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1, p2}, Lyee;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lteam/opay/business/picture/PickImageSheetFragment;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lzee;

    .line 33
    .line 34
    invoke-direct {v2, p0, p1, p2}, Lzee;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lteam/opay/business/picture/PickImageSheetFragment;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lre6;->q(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final showPickImageFragment$lambda$5$lambda$1(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->takePhoto(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final showPickImageFragment$lambda$5$lambda$4(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Lkotlin/Unit;
    .locals 8

    .line 1
    new-instance v6, Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->context:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "context"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v7

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    iget v3, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->phoneMaxSize:I

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/picture/helper/SelectFileHelper;-><init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 26
    .line 27
    new-instance v1, Lxee;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lxee;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v7, v1}, Lteam/opay/business/picture/helper/PickViewWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->n(Lteam/opay/business/picture/helper/PickViewWrapper;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lteam/opay/business/picture/helper/SelectFileHelper;->l()V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private static final showPickImageFragment$lambda$5$lambda$4$lambda$3$lambda$2(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3, p2, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->handleResult(Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final takePhoto(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V
    .locals 8

    .line 1
    new-instance v6, Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->context:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "context"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v7

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    iget v2, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->phoneMaxSize:I

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/picture/helper/CameraHelper;-><init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 26
    .line 27
    new-instance v1, Lbfe;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lbfe;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v7, v1}, Lteam/opay/business/picture/helper/PickViewWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v0}, Lteam/opay/business/picture/helper/CameraHelper;->w(Lteam/opay/business/picture/helper/PickViewWrapper;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lteam/opay/business/picture/helper/CameraHelper;->u()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static final takePhoto$lambda$7$lambda$6(Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3, p2, p4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->handleResult(Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public attach(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->context:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->webView:Landroid/webkit/WebView;

    .line 13
    .line 14
    return-void
.end method

.method public final takePhotoAndUpload(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 9
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "takePhotoAndUpload"
        }
    .end annotation

    .line 1
    const-string v0, "webFoundationJsData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/gson/Gson;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lcom/google/gson/JsonObject;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v4, v0

    .line 22
    check-cast v4, Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    const-string v0, "type"

    .line 25
    .line 26
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v1, "key"

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v1, "maxsize"

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/16 v1, 0x64

    .line 62
    .line 63
    :goto_0
    iput v1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->phoneMaxSize:I

    .line 64
    .line 65
    new-instance v8, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/16 v6, 0x8

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    move-object v1, v8

    .line 82
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x3

    .line 86
    if-ne v0, v1, :cond_1

    .line 87
    .line 88
    invoke-direct {p0, p1, v8}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->takePhoto(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-direct {p0, p1, v8}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->showPickImageFragment(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method
