.class public final Lcom/opay/webview/abtest/WebViewErrorABTest;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "WebViewErrorABTest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/webview/abtest/WebViewErrorABTest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lcom/opay/webview/abtest/WebViewErrorABTest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0000H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/opay/webview/abtest/WebViewErrorABTest;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "()V",
        "defaultTrackEvent",
        "",
        "getDefaultTrackEvent",
        "()Z",
        "setDefaultTrackEvent",
        "(Z)V",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/opay/webview/abtest/WebViewErrorABTest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private defaultTrackEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/webview/abtest/WebViewErrorABTest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/webview/abtest/WebViewErrorABTest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/webview/abtest/WebViewErrorABTest;->Companion:Lcom/opay/webview/abtest/WebViewErrorABTest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 3
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
    const-string v1, "enabled"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/opay/webview/abtest/WebViewErrorABTest;->defaultTrackEvent:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "feature_webview_page_onreceive_error"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultTrackEvent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/webview/abtest/WebViewErrorABTest;->defaultTrackEvent:Z

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Lcom/opay/webview/abtest/WebViewErrorABTest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opay/webview/abtest/WebViewErrorABTest;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/webview/abtest/WebViewErrorABTest;->getValue()Lcom/opay/webview/abtest/WebViewErrorABTest;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultTrackEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/webview/abtest/WebViewErrorABTest;->defaultTrackEvent:Z

    .line 2
    .line 3
    return-void
.end method
