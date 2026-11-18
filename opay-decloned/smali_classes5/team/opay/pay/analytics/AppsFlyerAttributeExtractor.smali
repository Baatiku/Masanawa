.class public final Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;
.super Lteam/opay/pay/analytics/LoggingConversionListener;
.source "FirebaseAnalyticsBackend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB!\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000f\u001a\u00020\u000e2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u00020\u000b8\u0014X\u0094D\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;",
        "Lteam/opay/pay/analytics/LoggingConversionListener;",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "analytics",
        "Lteam/opay/core/api/UserPropertiesRepository;",
        "userPropertiesRepository",
        "Landroid/content/Context;",
        "applicationContext",
        "<init>",
        "(Lcom/google/firebase/analytics/FirebaseAnalytics;Lteam/opay/core/api/UserPropertiesRepository;Landroid/content/Context;)V",
        "",
        "",
        "",
        "conversionData",
        "",
        "onConversionDataSuccess",
        "(Ljava/util/Map;)V",
        "b",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "c",
        "Lteam/opay/core/api/UserPropertiesRepository;",
        "d",
        "Landroid/content/Context;",
        "e",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "TAG",
        "f",
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
.field public static final f:Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/firebase/analytics/FirebaseAnalytics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/UserPropertiesRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->f:Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/analytics/FirebaseAnalytics;Lteam/opay/core/api/UserPropertiesRepository;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/UserPropertiesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userPropertiesRepository"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "applicationContext"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/analytics/LoggingConversionListener;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->c:Lteam/opay/core/api/UserPropertiesRepository;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->d:Landroid/content/Context;

    .line 19
    .line 20
    const-string p1, "FirebaseAFListener"

    .line 21
    .line 22
    iput-object p1, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->e:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/analytics/LoggingConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->d:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "appsflyer_uid"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->c:Lteam/opay/core/api/UserPropertiesRepository;

    .line 19
    .line 20
    invoke-virtual {v2, v1, v0}, Lteam/opay/core/api/UserPropertiesRepository;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    sget-object v1, Lb60;->a:Lb60;

    .line 38
    .line 39
    invoke-virtual {v1}, Lb60;->i()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "appsflyer_campaign"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/analytics/AppsFlyerAttributeExtractor;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    sget-object v1, Lb60;->a:Lb60;

    .line 61
    .line 62
    invoke-virtual {v1}, Lb60;->j()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "appsflyer_source"

    .line 75
    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method
