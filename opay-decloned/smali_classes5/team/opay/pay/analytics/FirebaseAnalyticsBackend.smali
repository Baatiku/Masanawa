.class public final Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsBackend.kt"

# interfaces
.implements Lteam/opay/pay/analytics/AnalyticsBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/analytics/FirebaseAnalyticsBackend$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 42\u00020\u0001:\u00015B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u001f\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u000f\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0011J\u000f\u0010\u001b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u000f\u0010\u001c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u000f\u0010\u001e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J\u000f\u0010\u001f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u000f\u0010 \u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0011J\u000f\u0010!\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008!\u0010\u0011J\u000f\u0010\"\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0011J\u000f\u0010#\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0011J\u000f\u0010$\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0011J\u000f\u0010%\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0011J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010*\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010-R\u001a\u00103\u001a\u00020/8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u00100\u001a\u0004\u00081\u00102\u00a8\u00066"
    }
    d2 = {
        "Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;",
        "Lteam/opay/pay/analytics/AnalyticsBackend;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/api/UserPropertiesRepository;",
        "userPropertiesRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/UserPropertiesRepository;)V",
        "",
        "eventName",
        "Lkotlin/Function1;",
        "Landroid/os/Bundle;",
        "",
        "bundleModifications",
        "y",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "g",
        "()V",
        "b",
        "Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;",
        "step",
        "",
        "success",
        "p",
        "(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;Z)V",
        "a",
        "f",
        "k",
        "r",
        "o",
        "n",
        "h",
        "i",
        "q",
        "j",
        "e",
        "m",
        "l",
        "type",
        "d",
        "(Ljava/lang/String;)V",
        "value",
        "setUserProperty",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "firebaseAnalytics",
        "Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;",
        "Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;",
        "w",
        "()Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;",
        "appsFlyerConversionListener",
        "c",
        "Companion",
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
.field public static final c:Lteam/opay/pay/analytics/FirebaseAnalyticsBackend$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/firebase/analytics/FirebaseAnalytics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->c:Lteam/opay/pay/analytics/FirebaseAnalyticsBackend$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/UserPropertiesRepository;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/UserPropertiesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userPropertiesRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lzr6;->a:Lzr6;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lzr6;->a(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 29
    .line 30
    new-instance v0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 33
    .line 34
    invoke-direct {v0, v1, p2, p1}, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;Lteam/opay/core/api/UserPropertiesRepository;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->b:Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;

    .line 38
    .line 39
    return-void
.end method

.method public static final A(Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final B(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;ZLandroid/os/Bundle;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$logEvent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "step"

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "success"

    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final C(Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "$this$logEvent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "param_splash_img_show"

    .line 7
    .line 8
    const-string v1, "splash_img_show"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic s(Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->A(Landroid/os/Bundle;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->C(Landroid/os/Bundle;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->x(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;ZLandroid/os/Bundle;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->B(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;ZLandroid/os/Bundle;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final x(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$logEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lf26;

    .line 6
    .line 7
    invoke-direct {p2}, Lf26;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->y(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "logout"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "splash_skip"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Lkotlin/Pair;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic c()Lcom/appsflyer/AppsFlyerConversionListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->w()Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Le26;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Le26;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "deeplink"

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->y(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "dialog_positive"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "topup_submit"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    new-instance v0, Lg26;

    .line 2
    .line 3
    invoke-direct {v0}, Lg26;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "splash_page_show"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->y(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lx7b;->a:Lx7b;

    .line 12
    .line 13
    new-instance v2, Lkotlin/Pair;

    .line 14
    .line 15
    const-string v3, "param_splash_img_show"

    .line 16
    .line 17
    const-string v4, "splash_img_show"

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    new-array v3, v3, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v2, v3, v4

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "verification_card_otp_view"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "verification_card_phone_view"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "verification_card_submit"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "topup_status_success_dialog"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "pin_lock_auto_unlock"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "dialog_negative"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "verification_card_pin_view"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "topup_status_failure_dialog"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lh26;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lh26;-><init>(Lteam/opay/pay/analytics/AnalyticsBackend$LoginStep;Z)V

    .line 9
    .line 10
    .line 11
    const-string p1, "login"

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->y(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "verification_card_abort_dialog"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "topup_status_processing_dialog"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->z(Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public w()Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->b:Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/analytics/FirebaseAnalyticsBackend;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
