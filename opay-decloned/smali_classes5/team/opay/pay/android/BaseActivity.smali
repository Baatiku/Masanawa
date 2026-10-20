.class public abstract Lteam/opay/pay/android/BaseActivity;
.super Lteam/opay/core/android/InjectableActivity;
.source "BaseActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008&\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0015\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ!\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J1\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00102\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\"\u0010$\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001d\u0010.\u001a\u0004\u0018\u00010*8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u001f\u001a\u0004\u0008,\u0010-R\"\u0010/\u001a\u00020#8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010%\u001a\u0004\u00080\u0010\'\"\u0004\u00081\u0010)R\"\u00102\u001a\u00020#8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010%\u001a\u0004\u00083\u0010\'\"\u0004\u00084\u0010)R\"\u00105\u001a\u00020#8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010%\u001a\u0004\u00086\u0010\'\"\u0004\u00087\u0010)R\"\u00108\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u001c\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010\u0005R\"\u0010<\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u001c\u001a\u0004\u0008=\u0010:\"\u0004\u0008>\u0010\u0005\u00a8\u0006?"
    }
    d2 = {
        "Lteam/opay/pay/android/BaseActivity;",
        "Lteam/opay/core/android/InjectableActivity;",
        "",
        "layoutId",
        "<init>",
        "(I)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onStop",
        "onDestroy",
        "onActionBarBack",
        "",
        "name",
        "mode",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "(Ljava/lang/String;I)Landroid/content/SharedPreferences;",
        "message",
        "confirmText",
        "Lkotlin/Function0;",
        "onConfigmClick",
        "showErrorTip",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "I",
        "Lteam/opay/pay/android/AppLock;",
        "appLock$delegate",
        "Lid8;",
        "getAppLock",
        "()Lteam/opay/pay/android/AppLock;",
        "appLock",
        "",
        "resume",
        "Z",
        "getResume",
        "()Z",
        "setResume",
        "(Z)V",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator$delegate",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "skipAppLock",
        "getSkipAppLock",
        "setSkipAppLock",
        "needPaddingTop",
        "getNeedPaddingTop",
        "setNeedPaddingTop",
        "needPaddingBottom",
        "getNeedPaddingBottom",
        "setNeedPaddingBottom",
        "darkStatusBarColor",
        "getDarkStatusBarColor",
        "()I",
        "setDarkStatusBarColor",
        "lightStatusBarColor",
        "getLightStatusBarColor",
        "setLightStatusBarColor",
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
.field private final appLock$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private darkStatusBarColor:I

.field private final generator$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutId:I

.field private lightStatusBarColor:I

.field private needPaddingBottom:Z

.field private needPaddingTop:Z

.field private resume:Z

.field private skipAppLock:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/android/InjectableActivity;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/android/BaseActivity;->layoutId:I

    .line 5
    .line 6
    new-instance p1, Ljn0;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljn0;-><init>(Lteam/opay/pay/android/BaseActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/pay/android/BaseActivity;->appLock$delegate:Lid8;

    .line 16
    .line 17
    new-instance p1, Lln0;

    .line 18
    .line 19
    invoke-direct {p1}, Lln0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lteam/opay/pay/android/BaseActivity;->generator$delegate:Lid8;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingTop:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingBottom:Z

    .line 32
    .line 33
    sget p1, Lteam/opay/pay/R$color;->osdk_status_bar_dark:I

    .line 34
    .line 35
    iput p1, p0, Lteam/opay/pay/android/BaseActivity;->darkStatusBarColor:I

    .line 36
    .line 37
    sget p1, Lteam/opay/pay/R$color;->osdk_status_bar_light:I

    .line 38
    .line 39
    iput p1, p0, Lteam/opay/pay/android/BaseActivity;->lightStatusBarColor:I

    .line 40
    .line 41
    return-void
.end method

.method private static final appLock_delegate$lambda$0(Lteam/opay/pay/android/BaseActivity;)Lteam/opay/pay/android/AppLock;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/android/AppLock;

    .line 2
    .line 3
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/pay/android/AppLock;-><init>(Landroid/app/Application;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static final generator_delegate$lambda$1()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    return-object v0
.end method

.method private static final onCreate$lambda$2(Lteam/opay/pay/android/BaseActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getInsets(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->d()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getNeedPaddingTop()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget v0, v0, Lpg7;->b:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getNeedPaddingBottom()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    iget p0, v2, Lpg7;->d:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    :goto_1
    invoke-virtual {p1, v3, v0, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    return-object p2
.end method

.method public static synthetic showErrorTip$default(Lteam/opay/pay/android/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget p2, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/android/BaseActivity;->showErrorTip(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorTip"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method private static final showErrorTip$lambda$6$lambda$5(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/android/BaseActivity;)Lteam/opay/pay/android/AppLock;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/BaseActivity;->appLock_delegate$lambda$0(Lteam/opay/pay/android/BaseActivity;)Lteam/opay/pay/android/AppLock;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/android/BaseActivity;->generator_delegate$lambda$1()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/BaseActivity;->showErrorTip$lambda$6$lambda$5(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/android/BaseActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/BaseActivity;->onCreate$lambda$2(Lteam/opay/pay/android/BaseActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final getAppLock()Lteam/opay/pay/android/AppLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/BaseActivity;->appLock$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/android/AppLock;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDarkStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/android/BaseActivity;->darkStatusBarColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/BaseActivity;->generator$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public getLightStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/android/BaseActivity;->lightStatusBarColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getNeedPaddingBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingBottom:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNeedPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingTop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResume()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->resume:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/android/OpayApplication;->Companion:Lteam/opay/pay/android/OpayApplication$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Lloa;->a(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x1

    .line 17
    invoke-static {p1, p2}, Lcom/tencent/mmkv/MMKV;->p(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "mmkvWithID(...)"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lteam/opay/pay/android/MMKVProxy;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    :cond_1
    invoke-direct {v0, p1, p2}, Lteam/opay/pay/android/MMKVProxy;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "getSharedPreferences(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public getSkipAppLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->skipAppLock:Z

    .line 2
    .line 3
    return v0
.end method

.method public onActionBarBack()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onActionBarBack()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-static {p0}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getNeedPaddingTop()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getDarkStatusBarColor()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v1, Lteam/opay/pay/R$color;->transparent:I

    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getNeedPaddingTop()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getLightStatusBarColor()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget v2, Lteam/opay/pay/R$color;->transparent:I

    .line 38
    .line 39
    :goto_1
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget-object v2, Lc03;->a:Lc03;

    .line 44
    .line 45
    invoke-virtual {v2}, Lc03;->c()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    sget-object v1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroidx/activity/SystemBarStyle$Companion;->c(I)Landroidx/activity/SystemBarStyle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v1}, Landroidx/activity/SystemBarStyle$Companion;->d(II)Landroidx/activity/SystemBarStyle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_2
    invoke-static {p0, v0, v0}, Landroidx/activity/a;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    .line 65
    .line 66
    .line 67
    invoke-super {p0, p1}, Lteam/opay/core/android/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    const p1, 0x1020002

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/FrameLayout;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lmn0;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lmn0;-><init>(Lteam/opay/pay/android/BaseActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->resume:Z

    .line 8
    .line 9
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lteam/opay/pay/android/BaseActivity;->resume:Z

    .line 6
    .line 7
    return-void
.end method

.method public setDarkStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/BaseActivity;->darkStatusBarColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setLightStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/BaseActivity;->lightStatusBarColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setNeedPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingBottom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->needPaddingTop:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setResume(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->resume:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSkipAppLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/BaseActivity;->skipAppLock:Z

    .line 2
    .line 3
    return-void
.end method

.method public final showErrorTip(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "confirmText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 12
    .line 13
    const/16 v10, 0xb8

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-static/range {v1 .. v11}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lnn0;

    .line 30
    .line 31
    invoke-direct {p2, p3}, Lnn0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
