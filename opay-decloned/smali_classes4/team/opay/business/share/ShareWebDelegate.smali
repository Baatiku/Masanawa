.class public final Lteam/opay/business/share/ShareWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "ShareWebDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ4\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ/\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ/\u0010!\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u000f\u0010\"\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u000f\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*H\u0007\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*H\u0007\u00a2\u0006\u0004\u0008.\u0010-J\u0017\u0010/\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*H\u0007\u00a2\u0006\u0004\u0008/\u0010-J\u0017\u00100\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*H\u0007\u00a2\u0006\u0004\u00080\u0010-J\u0017\u00101\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*H\u0007\u00a2\u0006\u0004\u00081\u0010-R\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020:098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010>\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010@\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR#\u0010H\u001a\n C*\u0004\u0018\u00010B0B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\u00a8\u0006I"
    }
    d2 = {
        "Lteam/opay/business/share/ShareWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "<init>",
        "()V",
        "",
        "",
        "list",
        "Lteam/opay/business/share/ShareItem;",
        "getPlatformList",
        "(Ljava/util/List;)Ljava/util/List;",
        "Lteam/opay/business/share/ShareInfo;",
        "shareInfo",
        "",
        "showShareDialogFragment",
        "(Lteam/opay/business/share/ShareInfo;Ljava/util/List;)V",
        "Landroid/content/Context;",
        "context",
        "base64",
        "note",
        "Ljava/io/File;",
        "privacyFile",
        "saveToAlbumOrDownload",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;",
        "sourceFile",
        "displayName",
        "savePdfToDownload",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "url",
        "fileName",
        "fileType",
        "innerSave",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "path",
        "onSavedSucceed",
        "showStorageFailedDialog",
        "Landroid/content/Intent;",
        "getAppSettingsIntent",
        "()Landroid/content/Intent;",
        "Landroid/webkit/WebView;",
        "webView",
        "attach",
        "(Landroid/webkit/WebView;)V",
        "Lcom/opay/webview/WebFoundationJsData;",
        "webFoundationJsData",
        "customShare",
        "(Lcom/opay/webview/WebFoundationJsData;)V",
        "customCreateSinglePDF",
        "shareWithLoading",
        "downloadPrivacyFile",
        "downloadMultiFile",
        "dataList",
        "Ljava/util/List;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "loading",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/business/share/ui/LoadingDialog;",
        "loadingDialog",
        "Lteam/opay/business/share/ui/LoadingDialog;",
        "isAttached",
        "Z",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "singleExecutor$delegate",
        "Lid8;",
        "getSingleExecutor",
        "()Ljava/util/concurrent/ExecutorService;",
        "singleExecutor",
        "business-share_release"
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
.field public context:Landroid/content/Context;

.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/share/ShareItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private loadingDialog:Lteam/opay/business/share/ui/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final singleExecutor$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lteam/opay/business/share/ShareItem;

    .line 6
    .line 7
    sget-object v1, Lteam/opay/business/share/ShareItem;->WHATSAPP:Lteam/opay/business/share/ShareItem;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    sget-object v1, Lteam/opay/business/share/ShareItem;->COPY:Lteam/opay/business/share/ShareItem;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sget-object v1, Lteam/opay/business/share/ShareItem;->SMS:Lteam/opay/business/share/ShareItem;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    sget-object v1, Lteam/opay/business/share/ShareItem;->MORE:Lteam/opay/business/share/ShareItem;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->dataList:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    new-instance v0, Lwnd;

    .line 41
    .line 42
    invoke-direct {v0}, Lwnd;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->singleExecutor$delegate:Lid8;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/share/ShareWebDelegate;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/share/ShareWebDelegate;->downloadMultiFile$lambda$19(Lteam/opay/business/share/ShareWebDelegate;Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getLoading$p(Lteam/opay/business/share/ShareWebDelegate;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lteam/opay/business/share/ShareWebDelegate;)Lteam/opay/business/share/ui/LoadingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loadingDialog:Lteam/opay/business/share/ui/LoadingDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$saveToAlbumOrDownload(Lteam/opay/business/share/ShareWebDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lteam/opay/business/share/ShareWebDelegate;->saveToAlbumOrDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setAttached$p(Lteam/opay/business/share/ShareWebDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/share/ShareWebDelegate;->isAttached:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final attach$lambda$1(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loadingDialog:Lteam/opay/business/share/ui/LoadingDialog;

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
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/LoadingDialog;->a(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/share/ShareWebDelegate;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/share/ShareWebDelegate;->shareWithLoading$lambda$8$lambda$7$lambda$6(Lteam/opay/business/share/ShareWebDelegate;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/share/ShareWebDelegate;->onSavedSucceed$lambda$23(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/share/ShareWebDelegate;->attach$lambda$1(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final downloadMultiFile$lambda$19(Lteam/opay/business/share/ShareWebDelegate;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move-object v1, v2

    .line 19
    :cond_0
    :try_start_1
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "list"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_0
    if-ge v4, v3, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const-string v6, "url"

    .line 52
    .line 53
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-string v7, ".jpg"

    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    const-string v7, ".jpeg"

    .line 70
    .line 71
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    const-string v7, ".png"

    .line 78
    .line 79
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_5

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    :goto_1
    const-string v7, "name"

    .line 91
    .line 92
    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const-string v8, "fileType"

    .line 97
    .line 98
    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-lez v8, :cond_3

    .line 107
    .line 108
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-lez v8, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v8, v6, v7, v5}, Lteam/opay/business/share/ShareWebDelegate;->innerSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "note"

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {}, Le60;->i()Ljava/util/concurrent/Executor;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Lqnd;

    .line 141
    .line 142
    invoke-direct {v2, p0, v0, p1}, Lqnd;-><init>(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;Lcom/opay/webview/WebFoundationJsData;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 149
    .line 150
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Le60;->i()Ljava/util/concurrent/Executor;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Lrnd;

    .line 164
    .line 165
    invoke-direct {v1, p1}, Lrnd;-><init>(Lcom/opay/webview/WebFoundationJsData;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :goto_4
    return-void

    .line 173
    :goto_5
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 174
    .line 175
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method private static final downloadMultiFile$lambda$19$lambda$16(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p1, "status"

    .line 14
    .line 15
    const-string v0, "success"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "toString(...)"

    .line 25
    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static final downloadMultiFile$lambda$19$lambda$18(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "status"

    .line 7
    .line 8
    const-string v2, "fail"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "toString(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic e(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/share/ShareWebDelegate;->downloadMultiFile$lambda$19$lambda$16(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/share/ShareWebDelegate;->singleExecutor_delegate$lambda$0()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/share/ShareWebDelegate;->shareWithLoading$lambda$8$lambda$7(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getAppSettingsIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "package"

    .line 23
    .line 24
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private final getPlatformList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/business/share/ShareItem;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lzmd;->a:Lzmd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzmd;->c(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->dataList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p1
.end method

.method private final getSingleExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->singleExecutor$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/business/share/ShareWebDelegate;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ShareWebDelegate;->showStorageFailedDialog$lambda$26$lambda$25(Lteam/opay/business/share/ShareWebDelegate;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ShareWebDelegate;->downloadMultiFile$lambda$19$lambda$18(Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final innerSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "webpic"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const-string v0, "getPath(...)"

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/share/ShareWebDelegate;->onSavedSucceed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Lcom/bumptech/glide/RequestManager;->k()Ljpc;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3, p2}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Ljpc;->R0()Lwm6;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/share/ShareWebDelegate;->onSavedSucceed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final onSavedSucceed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Le60;->i()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    new-instance v0, Lvnd;

    .line 6
    .line 7
    invoke-direct {v0, p2, p3, p1}, Lvnd;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final onSavedSucceed$lambda$23(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0}, Lsy5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "."

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-static {v0, p2, p0, p1}, Lteam/opay/business/share/utils/a;->b(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private final savePdfToDownload(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    :try_start_2
    invoke-static {p2, p1, v0, v2, v3}, Lom1;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_3
    invoke-static {p1, v3}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_4
    invoke-static {p2, v3}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 42
    :catchall_2
    move-exception v1

    .line 43
    :try_start_6
    invoke-static {p1, v0}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 48
    :catchall_3
    move-exception v0

    .line 49
    :try_start_8
    invoke-static {p2, p1}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 53
    :catch_0
    :goto_1
    return-void
.end method

.method private final saveToAlbumOrDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p5, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;-><init>(Lteam/opay/business/share/ShareWebDelegate;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    move-object p3, p1

    .line 42
    check-cast p3, Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroid/content/Context;

    .line 47
    .line 48
    iget-object p2, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Lteam/opay/business/share/ShareWebDelegate;

    .line 51
    .line 52
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p5, Lteam/opay/business/share/pdf/ShareFile;->a:Lteam/opay/business/share/pdf/ShareFile;

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    const-string v2, ","

    .line 72
    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-static {p2, v2, v3, v5, v3}, Lkotlin/text/StringsKt;->f1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object p2, v3

    .line 80
    :goto_1
    if-nez p2, :cond_4

    .line 81
    .line 82
    const-string p2, ""

    .line 83
    .line 84
    :cond_4
    iput-object p0, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object p1, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object p3, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->L$2:Ljava/lang/Object;

    .line 89
    .line 90
    iput v4, v0, Lteam/opay/business/share/ShareWebDelegate$saveToAlbumOrDownload$1;->label:I

    .line 91
    .line 92
    invoke-virtual {p5, p2, p4, v0}, Lteam/opay/business/share/pdf/ShareFile;->j(Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p5

    .line 96
    if-ne p5, v1, :cond_5

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_5
    move-object p2, p0

    .line 100
    :goto_2
    check-cast p5, Ljava/io/File;

    .line 101
    .line 102
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    if-nez p4, :cond_6

    .line 107
    .line 108
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_6
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    :try_start_0
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    const-string v0, ".jpg"

    .line 119
    .line 120
    invoke-static {p4, v0, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    const-string v0, ".jpeg"

    .line 127
    .line 128
    invoke-static {p4, v0, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    const-string v0, ".png"

    .line 135
    .line 136
    invoke-static {p4, v0, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    invoke-direct {p2, p5, p4}, Lteam/opay/business/share/ShareWebDelegate;->savePdfToDownload(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catch_0
    move-exception p2

    .line 148
    goto :goto_5

    .line 149
    :cond_8
    :goto_3
    new-instance p2, Lkotlin/text/Regex;

    .line 150
    .line 151
    const-string v0, "_\\d+\\*+"

    .line 152
    .line 153
    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "_"

    .line 157
    .line 158
    invoke-virtual {p2, p4, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p5, p1, p2, v3}, Lteam/opay/business/share/utils/a;->b(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-static {p1, p3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object p2, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 169
    .line 170
    invoke-virtual {p2, p1, p5}, Lteam/opay/business/share/utils/PDFUtils;->u(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :goto_5
    instance-of p3, p2, Landroid/system/ErrnoException;

    .line 175
    .line 176
    if-eqz p3, :cond_9

    .line 177
    .line 178
    check-cast p2, Landroid/system/ErrnoException;

    .line 179
    .line 180
    iget p2, p2, Landroid/system/ErrnoException;->errno:I

    .line 181
    .line 182
    sget p3, Landroid/system/OsConstants;->ENOSPC:I

    .line 183
    .line 184
    if-ne p2, p3, :cond_9

    .line 185
    .line 186
    sget p2, Lteam/opay/business/share/R$string;->share_no_space:I

    .line 187
    .line 188
    invoke-static {p1, p2}, Let;->u(Landroid/content/Context;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    sget p2, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 193
    .line 194
    invoke-static {p1, p2}, Let;->u(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p1
.end method

.method private static final shareWithLoading$lambda$8$lambda$7(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p1}, Lsy5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "."

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "webpic"

    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->k()Ljpc;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljpc;->R0()Lwm6;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v4, p1

    .line 83
    check-cast v4, Ljava/io/File;

    .line 84
    .line 85
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 v8, 0x6

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    move-object v5, v2

    .line 93
    invoke-static/range {v4 .. v9}, Lkotlin/io/a;->k(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Le60;->i()Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lxnd;

    .line 101
    .line 102
    invoke-direct {v0, p0, v2}, Lxnd;-><init>(Lteam/opay/business/share/ShareWebDelegate;Ljava/io/File;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_1
    return-void

    .line 124
    :goto_2
    iget-object p0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 125
    .line 126
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method private static final shareWithLoading$lambda$8$lambda$7$lambda$6(Lteam/opay/business/share/ShareWebDelegate;Ljava/io/File;)V
    .locals 1

    .line 1
    sget-object v0, Lzmd;->a:Lzmd;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p0, p1}, Lzmd;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final showShareDialogFragment(Lteam/opay/business/share/ShareInfo;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/ShareInfo;",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/business/share/ShareItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :try_start_0
    sget-object p2, Lud;->a:Lud;

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "opay://common/translucent/share"

    .line 31
    .line 32
    invoke-virtual {p2, v2, v3}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v2, "shareInfo"

    .line 37
    .line 38
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string p1, "ShareItems"

    .line 42
    .line 43
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget v0, Lteam/opay/core/common/R$string;->common_not_supported:I

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method private final showStorageFailedDialog()V
    .locals 12

    .line 1
    new-instance v11, Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lteam/opay/core/common/R$string;->common_check_storage_permission_failed:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v0, "getString(...)"

    .line 14
    .line 15
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget v2, Lteam/opay/core/common/R$string;->common_yes:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v2, Lteam/opay/core/common/R$string;->common_no:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v9, 0xe1

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v0, v11

    .line 54
    invoke-direct/range {v0 .. v10}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 58
    .line 59
    invoke-virtual {v0, v11}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lsnd;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lsnd;-><init>(Lteam/opay/business/share/ShareWebDelegate;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lteam/opay/core/common/base/CorpDialogFragment;->m0(Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-static {v1, v0}, Lre6;->n(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseDialogFragment;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method

.method private static final showStorageFailedDialog$lambda$26$lambda$25(Lteam/opay/business/share/ShareWebDelegate;)Lkotlin/Unit;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/business/share/ShareWebDelegate;->getAppSettingsIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final singleExecutor_delegate$lambda$0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public attach(Landroid/webkit/WebView;)V
    .locals 3
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
    iget-boolean v0, p0, Lteam/opay/business/share/ShareWebDelegate;->isAttached:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lteam/opay/business/share/ShareWebDelegate;->isAttached:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ShareWebDelegate;->setContext(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lteam/opay/business/share/ui/LoadingDialog;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lteam/opay/business/share/ui/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->loadingDialog:Lteam/opay/business/share/ui/LoadingDialog;

    .line 42
    .line 43
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->loading:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    new-instance v1, Ltnd;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Ltnd;-><init>(Lteam/opay/business/share/ShareWebDelegate;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lteam/opay/business/share/ShareWebDelegate$b;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Lteam/opay/business/share/ShareWebDelegate$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lteam/opay/business/share/ShareWebDelegate$a;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lteam/opay/business/share/ShareWebDelegate$a;-><init>(Lteam/opay/business/share/ShareWebDelegate;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final customCreateSinglePDF(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "createSinglePdf"
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
    :try_start_0
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object v0, Ljk8;->c:Ljk8;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "functionData = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .line 40
    .line 41
    const-class v1, Lteam/opay/business/share/PDFInfo;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lteam/opay/business/share/PDFInfo;

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    check-cast v3, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    :try_start_1
    sget-object v0, Lud;->a:Lud;

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "opay://common/share/receipt/createPDF"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "SharePdfInfo"

    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget v1, Lteam/opay/core/common/R$string;->common_not_supported:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_2
    return-void
.end method

.method public final customShare(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "customShare"
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
    :try_start_0
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljk8;->c:Ljk8;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "functionData = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .line 40
    .line 41
    const-class v1, Lteam/opay/business/share/ShareInfo;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lteam/opay/business/share/ShareInfo;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/business/share/ShareInfo;->getPlatform()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lteam/opay/business/share/ShareWebDelegate;->getPlatformList(Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p0, p1, v0}, Lteam/opay/business/share/ShareWebDelegate;->showShareDialogFragment(Lteam/opay/business/share/ShareInfo;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    return-void
.end method

.method public final downloadMultiFile(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation runtime Ljk7;
        value = {
            "downloadMultiFile"
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
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Leob;->a:Leob;

    .line 11
    .line 12
    invoke-virtual {v1}, Leob;->b()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    array-length v3, v2

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lhob;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "mounted"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Lteam/opay/business/share/ShareWebDelegate;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lund;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lund;-><init>(Lteam/opay/business/share/ShareWebDelegate;Lcom/opay/webview/WebFoundationJsData;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v1}, Leob;->b()[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    array-length v0, p1

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-ge v1, v0, :cond_2

    .line 61
    .line 62
    aget-object v2, p1, v1

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-lez v3, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x0

    .line 75
    :goto_1
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-static {p1, v2}, Landroidx/core/app/a;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    sget-object v0, Leob;->a:Leob;

    .line 94
    .line 95
    invoke-virtual {v0}, Leob;->b()[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    array-length v1, v0

    .line 100
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [Ljava/lang/String;

    .line 105
    .line 106
    const/16 v1, 0x64

    .line 107
    .line 108
    invoke-static {p1, v0, v1}, Lhob;->c(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    invoke-direct {p0}, Lteam/opay/business/share/ShareWebDelegate;->showStorageFailedDialog()V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_2
    return-void
.end method

.method public final downloadPrivacyFile(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 9
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "downloadPrivacyFile"
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
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Leob;->a:Leob;

    .line 11
    .line 12
    invoke-virtual {v1}, Leob;->b()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    array-length v3, v2

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lhob;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    new-instance v6, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;

    .line 47
    .line 48
    invoke-direct {v6, p1, p0, v2}, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;-><init>(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/share/ShareWebDelegate;Ljr2;)V

    .line 49
    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    invoke-virtual {v1}, Leob;->b()[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    array-length v0, p1

    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    if-ge v1, v0, :cond_2

    .line 66
    .line 67
    aget-object v3, p1, v1

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lez v4, :cond_1

    .line 74
    .line 75
    move-object v2, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-static {p1, v2}, Landroidx/core/app/a;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    sget-object v0, Leob;->a:Leob;

    .line 99
    .line 100
    invoke-virtual {v0}, Leob;->b()[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    array-length v1, v0

    .line 105
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, [Ljava/lang/String;

    .line 110
    .line 111
    const/16 v1, 0x65

    .line 112
    .line 113
    invoke-static {p1, v0, v1}, Lhob;->c(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-direct {p0}, Lteam/opay/business/share/ShareWebDelegate;->showStorageFailedDialog()V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    iput-object p1, p0, Lteam/opay/business/share/ShareWebDelegate;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final shareWithLoading(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation runtime Ljk7;
        value = {
            "shareWithLoading"
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
    const-string v1, ""

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "link"

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v2, "imageUrl"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "description"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0}, Lteam/opay/business/share/ShareWebDelegate;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lynd;

    .line 52
    .line 53
    invoke-direct {v0, p0, v2}, Lynd;-><init>(Lteam/opay/business/share/ShareWebDelegate;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    :cond_3
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    sget-object v1, Lzmd;->a:Lzmd;

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, "\n"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, v2, p1}, Lzmd;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void
.end method
