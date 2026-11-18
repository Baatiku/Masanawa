.class public final Lcom/opay/team/newhome/dialog/OMainIWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "OMainIWebDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J|\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001c2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0002J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006!"
    }
    d2 = {
        "Lcom/opay/team/newhome/dialog/OMainIWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "attach",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "oPayShare",
        "webFoundationJsData",
        "Lcom/opay/webview/WebFoundationJsData;",
        "onShareClick",
        "bannerUrl",
        "",
        "shareLink",
        "shareText",
        "sharePic",
        "shareType",
        "scheme",
        "eventName",
        "source",
        "needRequestContact",
        "",
        "useShortUrl",
        "needJoinShareType",
        "copyContent",
        "getRemoteConfig",
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


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->onShareClick$lambda$2(Ljava/lang/String;Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->onShareClick$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final onShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p8

    .line 14
    .line 15
    move/from16 v15, p9

    .line 16
    .line 17
    move/from16 v16, p10

    .line 18
    .line 19
    move/from16 v17, p11

    .line 20
    .line 21
    move-object/from16 v18, p12

    .line 22
    .line 23
    sget-object v1, Lteam/opay/pay/cashier/result/ShareDialogFragment;->M:Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;

    .line 24
    .line 25
    const/16 v19, 0x1fc0

    .line 26
    .line 27
    const/16 v20, 0x0

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v14, 0x0

    .line 36
    invoke-static/range {v1 .. v20}, Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;->c(Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/cashier/result/ShareDialogFragment;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lxca;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lxca;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lyca;

    .line 49
    .line 50
    move-object/from16 v3, p0

    .line 51
    .line 52
    move-object/from16 v4, p6

    .line 53
    .line 54
    invoke-direct {v2, v4, v3, v0}, Lyca;-><init>(Ljava/lang/String;Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->s0(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Ld00;->a:Ld00;

    .line 61
    .line 62
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-class v2, Lteam/opay/pay/cashier/result/ShareDialogFragment;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public static synthetic onShareClick$default(Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 16

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v7, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v8, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v8, p5

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v9, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v9, p6

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move-object v10, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v10, p7

    .line 36
    .line 37
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    move-object v11, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v11, p8

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v1, v0, 0x100

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move/from16 v12, p9

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v1, v0, 0x200

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v13, p10

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v1, v0, 0x400

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move/from16 v14, p11

    .line 69
    .line 70
    :goto_7
    and-int/lit16 v0, v0, 0x800

    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    move-object v15, v0

    .line 76
    goto :goto_8

    .line 77
    :cond_8
    move-object/from16 v15, p12

    .line 78
    .line 79
    :goto_8
    move-object/from16 v3, p0

    .line 80
    .line 81
    move-object/from16 v4, p1

    .line 82
    .line 83
    move-object/from16 v5, p2

    .line 84
    .line 85
    move-object/from16 v6, p3

    .line 86
    .line 87
    invoke-direct/range {v3 .. v15}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->onShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private static final onShareClick$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lkotlin/Pair;

    .line 17
    .line 18
    const-string v2, "platform"

    .line 19
    .line 20
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    new-array p1, p1, [Lkotlin/Pair;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v1, p1, v2

    .line 28
    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final onShareClick$lambda$2(Ljava/lang/String;Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, "_share_top_click"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 p1, 0x0

    .line 25
    new-array v5, p1, [Lkotlin/Pair;

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v2, p0

    .line 31
    invoke-static/range {v0 .. v7}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
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
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->setContext(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->context:Landroid/content/Context;

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

.method public final getRemoteConfig(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 7
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "getRemoteConfig"
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
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "keys"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget-object v5, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    invoke-virtual {v5, v4, v6}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5, v4, v6}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "toString(...)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method

.method public final oPayShare(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 17
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "OPayShare"
        }
    .end annotation

    .line 1
    const-string v0, "webFoundationJsData"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "eventName"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const-string v0, "content"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v0, "shareLink"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v0, "bannerUrl"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v0, "scheme"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    const-string v0, "source"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    const-string v0, "needRequestContact"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v0, "useShortUrl"

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v0, "needJoinShareType"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v0, "shareCopyContent"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/16 v15, 0x18

    .line 99
    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v7, 0x0

    .line 104
    move-object/from16 v2, p0

    .line 105
    .line 106
    invoke-static/range {v2 .. v16}, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->onShareClick$default(Lcom/opay/team/newhome/dialog/OMainIWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :catch_0
    :cond_0
    return-void
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
    iput-object p1, p0, Lcom/opay/team/newhome/dialog/OMainIWebDelegate;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
