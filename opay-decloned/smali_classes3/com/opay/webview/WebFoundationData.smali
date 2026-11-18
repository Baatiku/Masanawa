.class public Lcom/opay/webview/WebFoundationData;
.super Ljava/lang/Object;
.source "WebFoundationData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010%\n\u0002\u0008#\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0004R,\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00168\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R\u001e\u0010\u001d\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0010R\u001e\u0010\u001f\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0010R\u001e\u0010\"\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000e\"\u0004\u0008$\u0010\u0010R\u001e\u0010%\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u000e\"\u0004\u0008\'\u0010\u0010R\u001e\u0010(\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u000e\"\u0004\u0008*\u0010\u0010R\u001e\u0010+\u001a\u00020\u000c8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000e\"\u0004\u0008-\u0010\u0010R\u001e\u0010.\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0013\"\u0004\u00080\u0010\u0004R\u001e\u00101\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0013\"\u0004\u00083\u0010\u0004R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0013\"\u0004\u00085\u0010\u0004R\u001e\u00106\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0013\"\u0004\u00088\u0010\u0004\u00a8\u00069"
    }
    d2 = {
        "Lcom/opay/webview/WebFoundationData;",
        "Ljava/io/Serializable;",
        "url",
        "",
        "(Ljava/lang/String;)V",
        "cacheMode",
        "",
        "getCacheMode",
        "()I",
        "setCacheMode",
        "(I)V",
        "changeableTitle",
        "",
        "getChangeableTitle",
        "()Z",
        "setChangeableTitle",
        "(Z)V",
        "cookie",
        "getCookie",
        "()Ljava/lang/String;",
        "setCookie",
        "headerMap",
        "",
        "getHeaderMap",
        "()Ljava/util/Map;",
        "setHeaderMap",
        "(Ljava/util/Map;)V",
        "isShowLoadingView",
        "setShowLoadingView",
        "isShowToolbar",
        "setShowToolbar",
        "noPaddingBottom",
        "getNoPaddingBottom",
        "setNoPaddingBottom",
        "noPaddingTop",
        "getNoPaddingTop",
        "setNoPaddingTop",
        "noPaddingTopOrBottom",
        "getNoPaddingTopOrBottom",
        "setNoPaddingTopOrBottom",
        "showBack",
        "getShowBack",
        "setShowBack",
        "showTitleClose",
        "getShowTitleClose",
        "setShowTitleClose",
        "title",
        "getTitle",
        "setTitle",
        "titleBarColor",
        "getTitleBarColor",
        "setTitleBarColor",
        "getUrl",
        "setUrl",
        "userAgent",
        "getUserAgent",
        "setUserAgent",
        "webview_lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private cacheMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cacheMode"
    .end annotation
.end field

.field private changeableTitle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changeableTitle"
    .end annotation
.end field

.field private cookie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cookie"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private headerMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headerMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isShowLoadingView:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isShowLoadingView"
    .end annotation
.end field

.field private isShowToolbar:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showToolbar"
    .end annotation
.end field

.field private noPaddingBottom:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noPaddingBottom"
    .end annotation
.end field

.field private noPaddingTop:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noPaddingTop"
    .end annotation
.end field

.field private noPaddingTopOrBottom:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noPaddingTopOrBottom"
    .end annotation
.end field

.field private showBack:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showBack"
    .end annotation
.end field

.field private showTitleClose:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showTitleClose"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleBarColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDarkMode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAgent"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->url:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->title:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->showBack:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->showTitleClose:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->isShowToolbar:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->changeableTitle:Z

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/opay/webview/WebFoundationData;->cacheMode:I

    .line 26
    .line 27
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->cookie:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->userAgent:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->isShowLoadingView:Z

    .line 32
    .line 33
    const-string p1, "#ffffff"

    .line 34
    .line 35
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->titleBarColor:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public getCacheMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/webview/WebFoundationData;->cacheMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getChangeableTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->changeableTitle:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->cookie:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->headerMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNoPaddingBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->noPaddingBottom:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNoPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->noPaddingTop:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNoPaddingTopOrBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->noPaddingTopOrBottom:Z

    .line 2
    .line 3
    return v0
.end method

.method public getShowBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->showBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public getShowTitleClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->showTitleClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitleBarColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->titleBarColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/WebFoundationData;->userAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isShowLoadingView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->isShowLoadingView:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowToolbar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/WebFoundationData;->isShowToolbar:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCacheMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/webview/WebFoundationData;->cacheMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setChangeableTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->changeableTitle:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->cookie:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setHeaderMap(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->headerMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setNoPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->noPaddingBottom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->noPaddingTop:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoPaddingTopOrBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->noPaddingTopOrBottom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->showBack:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowLoadingView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->isShowLoadingView:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowTitleClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->showTitleClose:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowToolbar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/WebFoundationData;->isShowToolbar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setTitleBarColor(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->titleBarColor:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/opay/webview/WebFoundationData;->userAgent:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
