.class public final Lteam/opay/business/js/BusinessWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "BusinessWebDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/js/BusinessWebDelegate$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J0\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0082@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J(\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J8\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008$\u0010#J\u0017\u0010%\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008%\u0010#J\u0017\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008&\u0010#J\u0017\u0010\'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008\'\u0010#J\u0017\u0010(\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008(\u0010#R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001a\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00109R\u0016\u0010:\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;\u00a8\u0006<"
    }
    d2 = {
        "Lteam/opay/business/js/BusinessWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "<init>",
        "()V",
        "",
        "chooseFile",
        "Lteam/opay/business/js/H5FileChooser;",
        "fileChooser",
        "Landroid/net/Uri;",
        "uri",
        "",
        "path",
        "mimeType",
        "handleFileChooseResult",
        "(Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;",
        "compressImage",
        "(Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;",
        "handleFileResult",
        "(Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;",
        "fileUrl",
        "Lteam/opay/core/http/arch/ApiError;",
        "error",
        "callbackH5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "activity",
        "cancelCallback",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
        "Landroid/webkit/WebView;",
        "webView",
        "attach",
        "(Landroid/webkit/WebView;)V",
        "Lcom/opay/webview/WebFoundationJsData;",
        "webFoundationJsData",
        "openFileChooser",
        "(Lcom/opay/webview/WebFoundationJsData;)V",
        "isAppInstalled",
        "setAppEnabled",
        "isNotificationEnable",
        "goSettingIntent",
        "playSound",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "loading",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/business/js/LoadingDialog;",
        "loadingDialog",
        "Lteam/opay/business/js/LoadingDialog;",
        "Lteam/opay/business/js/hilt/UploadFileRepository;",
        "repository$delegate",
        "Lid8;",
        "getRepository",
        "()Lteam/opay/business/js/hilt/UploadFileRepository;",
        "repository",
        "Lcom/opay/webview/WebFoundationJsData;",
        "isAttached",
        "Z",
        "business-js_release"
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

.field private isAttached:Z

.field private final loading:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadingDialog:Lteam/opay/business/js/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repository$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Ljm1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljm1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->repository$delegate:Lid8;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/js/BusinessWebDelegate;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate;->openFileChooser$lambda$3(Lteam/opay/business/js/BusinessWebDelegate;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$callbackH5(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lteam/opay/business/js/BusinessWebDelegate;->callbackH5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$compressImage(Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/js/BusinessWebDelegate;->compressImage(Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoading$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/LoadingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->loadingDialog:Lteam/opay/business/js/LoadingDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRepository(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/hilt/UploadFileRepository;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/js/BusinessWebDelegate;->getRepository()Lteam/opay/business/js/hilt/UploadFileRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getWebFoundationJsData$p(Lteam/opay/business/js/BusinessWebDelegate;)Lcom/opay/webview/WebFoundationJsData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleFileChooseResult(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lteam/opay/business/js/BusinessWebDelegate;->handleFileChooseResult(Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$handleFileResult(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/js/BusinessWebDelegate;->handleFileResult(Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setAttached$p(Lteam/opay/business/js/BusinessWebDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/js/BusinessWebDelegate;->isAttached:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final attach$lambda$2$lambda$1(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->loadingDialog:Lteam/opay/business/js/LoadingDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/business/js/LoadingDialog;->a(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/js/BusinessWebDelegate;->attach$lambda$2$lambda$1(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/H5FileChooser;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/js/BusinessWebDelegate;->chooseFile$lambda$7(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/H5FileChooser;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final callbackH5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/http/arch/ApiError;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v1, v8

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p0

    .line 14
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/js/BusinessWebDelegate$callbackH5$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v8, p5}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1
.end method

.method public static synthetic callbackH5$default(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p3, ""

    .line 6
    .line 7
    :cond_0
    move-object v3, p3

    .line 8
    and-int/lit8 p3, p6, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const/4 p4, 0x0

    .line 13
    :cond_1
    move-object v4, p4

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move-object v5, p5

    .line 18
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/js/BusinessWebDelegate;->callbackH5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private final cancelCallback(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/js/BusinessWebDelegate$cancelCallback$1;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {v3, p0, p1}, Lteam/opay/business/js/BusinessWebDelegate$cancelCallback$1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final chooseFile()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    invoke-static {}, Lkt6;->g()Lcom/google/gson/Gson;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate;->webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object v3, v1

    .line 37
    :goto_0
    const-class v4, Lteam/opay/business/js/H5FileChooser;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lteam/opay/business/js/H5FileChooser;

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    :cond_3
    check-cast v2, Lteam/opay/business/js/H5FileChooser;

    .line 68
    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v4, Lil8;->c:Lil8;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "----------openFileChooser : "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/4 v6, 0x2

    .line 97
    invoke-static {v4, v5, v1, v6, v1}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lteam/opay/business/js/utils/FileChoose;->a:Lteam/opay/business/js/utils/FileChoose;

    .line 101
    .line 102
    new-instance v4, Lim1;

    .line 103
    .line 104
    invoke-direct {v4, v3, v2, v0, p0}, Lim1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/H5FileChooser;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0, v2, v4}, Lteam/opay/business/js/utils/FileChoose;->d(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/H5FileChooser;Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private static final chooseFile$lambda$7(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/H5FileChooser;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 19

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    move-object/from16 v9, p4

    .line 4
    .line 5
    const/4 v10, 0x0

    .line 6
    if-eqz v9, :cond_7

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/js/H5FileChooser;->f()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v11, "context"

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v9}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    iget-object v0, v8, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v10, v0

    .line 43
    :goto_0
    sget v0, Lteam/opay/business/js/R$string;->js_file_unknown:I

    .line 44
    .line 45
    invoke-static {v10, v0}, Let;->u(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/js/H5FileChooser;->f()Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "getDefault(...)"

    .line 60
    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "toLowerCase(...)"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    iget-object v0, v8, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move-object v10, v0

    .line 88
    :goto_1
    sget v0, Lteam/opay/business/js/R$string;->js_file_unsupported:I

    .line 89
    .line 90
    invoke-static {v10, v0}, Let;->u(Landroid/content/Context;I)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_4
    invoke-static/range {p2 .. p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    new-instance v12, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v1, v12

    .line 108
    move-object/from16 v2, p0

    .line 109
    .line 110
    move-object/from16 v3, p3

    .line 111
    .line 112
    move-object/from16 v4, p4

    .line 113
    .line 114
    move-object/from16 v5, p1

    .line 115
    .line 116
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V

    .line 117
    .line 118
    .line 119
    const/4 v5, 0x2

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v3, 0x0

    .line 122
    move-object v1, v0

    .line 123
    move-object v2, v11

    .line 124
    move-object v4, v12

    .line 125
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :goto_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    new-instance v16, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    move-object/from16 v1, v16

    .line 141
    .line 142
    move-object/from16 v2, p2

    .line 143
    .line 144
    move-object/from16 v3, p4

    .line 145
    .line 146
    move-object/from16 v4, p0

    .line 147
    .line 148
    move-object/from16 v5, p3

    .line 149
    .line 150
    move-object/from16 v6, p1

    .line 151
    .line 152
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Ljr2;)V

    .line 153
    .line 154
    .line 155
    const/16 v17, 0x2

    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    const/4 v15, 0x0

    .line 160
    invoke-static/range {v13 .. v18}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catch_0
    move-exception v0

    .line 165
    iget-object v1, v8, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 166
    .line 167
    if-nez v1, :cond_6

    .line 168
    .line 169
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v10

    .line 173
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    move-object/from16 v0, p2

    .line 196
    .line 197
    invoke-direct {v8, v0}, Lteam/opay/business/js/BusinessWebDelegate;->cancelCallback(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 198
    .line 199
    .line 200
    :goto_3
    sget-object v0, Lil8;->c:Lil8;

    .line 201
    .line 202
    move-object/from16 v1, p0

    .line 203
    .line 204
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "uri:"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v3, ", path:"

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const/4 v2, 0x2

    .line 232
    invoke-static {v0, v1, v10, v2, v10}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object v0
.end method

.method private final compressImage(Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v7, p4}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public static synthetic d(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/hilt/UploadFileRepository;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/js/BusinessWebDelegate;->repository_delegate$lambda$0(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/hilt/UploadFileRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getRepository()Lteam/opay/business/js/hilt/UploadFileRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->repository$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/js/hilt/UploadFileRepository;

    .line 8
    .line 9
    return-object v0
.end method

.method private final handleFileChooseResult(Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/js/H5FileChooser;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lpd1;->a:Lpd1;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lpd1;->d(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/js/H5FileChooser;->d()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-lez v0, :cond_2

    .line 22
    .line 23
    invoke-direct {p0, p2, p4, p1, p5}, Lteam/opay/business/js/BusinessWebDelegate;->compressImage(Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    invoke-direct {p0, p4, p3, p1, p5}, Lteam/opay/business/js/BusinessWebDelegate;->handleFileResult(Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-ne p1, p2, :cond_3

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method

.method private final handleFileResult(Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;-><init>(Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v7, p4}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1
.end method

.method private static final openFileChooser$lambda$3(Lteam/opay/business/js/BusinessWebDelegate;Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/opb/permission/PermStatus;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/business/js/BusinessWebDelegate$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    aget p2, v0, p2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p2, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p2, v0, :cond_0

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
    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/business/js/BusinessWebDelegate;->cancelCallback(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Lteam/opay/business/js/BusinessWebDelegate;->chooseFile()V

    .line 35
    .line 36
    .line 37
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private static final repository_delegate$lambda$0(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/hilt/UploadFileRepository;
    .locals 1

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "context"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    const-class v0, Lto5;

    .line 12
    .line 13
    invoke-static {p0, v0}, Luo5;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lto5;

    .line 18
    .line 19
    invoke-interface {p0}, Lto5;->f()Lteam/opay/business/js/hilt/UploadFileRepository;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public attach(Landroid/webkit/WebView;)V
    .locals 4
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
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/webview/IWebDelegate;->attach(Landroid/webkit/WebView;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-boolean v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->isAttached:Z

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->isAttached:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string v1, "context"

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object p1, v0

    .line 33
    :cond_0
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v2, Lteam/opay/business/js/LoadingDialog;

    .line 41
    .line 42
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v0, v3

    .line 51
    :goto_0
    invoke-direct {v2, v0}, Lteam/opay/business/js/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate;->loadingDialog:Lteam/opay/business/js/LoadingDialog;

    .line 55
    .line 56
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance v1, Lgm1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lgm1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lteam/opay/business/js/b$a;

    .line 64
    .line 65
    invoke-direct {v2, v1}, Lteam/opay/business/js/b$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lteam/opay/business/js/BusinessWebDelegate$b;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lteam/opay/business/js/BusinessWebDelegate$b;-><init>(Lteam/opay/business/js/BusinessWebDelegate;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public final goSettingIntent(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 1
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "goNotificationSetting"
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
    sget-object p1, Luz9;->a:Luz9;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "context"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    invoke-virtual {p1, v0}, Luz9;->a(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final isAppInstalled(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 6
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "isAppInstalled"
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
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    :cond_0
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "packageName"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "context"

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lteam/opay/business/js/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v4, 0x0

    .line 54
    :goto_0
    const-string v5, "installed"

    .line 55
    .line 56
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 62
    .line 63
    if-ne v0, v3, :cond_3

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    :cond_3
    const-string v0, "enabled"

    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "toString(...)"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final isNotificationEnable(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 6
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "isNotificationEnable"
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
    sget-object v0, Luz9;->a:Luz9;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "context"

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v1, v2

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Luz9;->b(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "enable"

    .line 29
    .line 30
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    sget-object v3, Lil8;->c:Lil8;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "--------isNotificationEnable="

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", json="

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v4, 0x2

    .line 61
    invoke-static {v3, v0, v2, v4, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "toString(...)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final openFileChooser(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "openFileChooser"
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
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate;->webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "context"

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sget-object v0, Ldob;->a:Ldob;

    .line 26
    .line 27
    sget-object v1, Lteam/opay/opb/permission/PermRequest;->b:Lteam/opay/opb/permission/PermRequest$Companion;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/opb/permission/PermRequest$Companion;->c()Lteam/opay/opb/permission/PermRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Leob;->a:Leob;

    .line 34
    .line 35
    invoke-virtual {v2}, Leob;->b()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    array-length v3, v2

    .line 40
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, [Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Lhm1;

    .line 47
    .line 48
    invoke-direct {v3, p0, p1}, Lhm1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1, v2, v3}, Ldob;->a(Ljava/lang/Object;Lteam/opay/opb/permission/PermRequest;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final playSound(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 7
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "playSound"
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
    invoke-static {}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->b()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, v0}, Lteam/opay/business/js/BusinessWebDelegate$playSound$1;-><init>(Lcom/opay/webview/WebFoundationJsData;Ljr2;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setAppEnabled(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 1
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "setAppEnabled"
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
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "packageName"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate;->context:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "context"

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lteam/opay/business/js/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
