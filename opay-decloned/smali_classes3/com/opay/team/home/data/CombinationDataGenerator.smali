.class public final Lcom/opay/team/home/data/CombinationDataGenerator;
.super Ljava/lang/Object;
.source "CombinationDataGenerator.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u000f\u0010\u0011\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\nJ\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\nJ\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\nJ%\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u001bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008#\u0010\"J\u000f\u0010$\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008$\u0010\nJ\u000f\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010\nJ\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\nJ\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008*\u0010)J\u001d\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00170-2\u0006\u0010,\u001a\u00020+H\u0017\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u00020\u00172\u0006\u0010,\u001a\u00020+H\u0017\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u00082\u0010\nJ\u000f\u00103\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u00083\u0010)J\u000f\u00104\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u00084\u0010\nJ\u000f\u00105\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u00085\u0010)J\u000f\u00106\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u00086\u0010\nJ\u000f\u00107\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u00087\u0010\nJ\u0011\u00108\u001a\u0004\u0018\u00010\u0017H\u0017\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008:\u0010\nJ\u000f\u0010;\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008;\u0010\nJ\u000f\u0010<\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008<\u0010\nJ\u000f\u0010=\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008=\u0010\nJ\u000f\u0010>\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008>\u0010\nJ%\u0010B\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010?2\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008D\u0010\nJ\u000f\u0010F\u001a\u00020EH\u0017\u00a2\u0006\u0004\u0008F\u0010GJW\u0010H\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u00082.\u0010L\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010K0J0I\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010K0J2\u0006\u0010M\u001a\u00020\'2\u0006\u0010N\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008H\u0010OJG\u0010H\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u00082.\u0010L\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010K0J0I\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010K0JH\u0016\u00a2\u0006\u0004\u0008H\u0010PJ\u000f\u0010R\u001a\u00020QH\u0017\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008T\u0010\nJ\u000f\u0010U\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008U\u0010\nJ\u000f\u0010V\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008V\u0010\nJ7\u0010Y\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u001e\u0010X\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020K0W\u0012\u0004\u0012\u00020\u00060\u001bH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008[\u0010\nJ-\u0010_\u001a\u00028\u0000\"\u000e\u0008\u0000\u0010?*\u0008\u0012\u0004\u0012\u00028\u00000\\2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00028\u00000]H\u0016\u00a2\u0006\u0004\u0008_\u0010`JA\u0010_\u001a\u00020\u0006\"\u000e\u0008\u0000\u0010?*\u0008\u0012\u0004\u0012\u00028\u00000\\2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00028\u00000]2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u001bH\u0016\u00a2\u0006\u0004\u0008_\u0010aJ\u0017\u0010c\u001a\u00020\u00062\u0006\u0010c\u001a\u00020bH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010f\u001a\u00020eH\u0016\u00a2\u0006\u0004\u0008f\u0010gJ\u000f\u0010h\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008h\u0010\nR\"\u0010j\u001a\u00020i8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\u0017\u0010q\u001a\u00020p8\u0006\u00a2\u0006\u000c\n\u0004\u0008q\u0010r\u001a\u0004\u0008s\u0010tR\"\u0010v\u001a\u00020u8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010w\u001a\u0004\u0008x\u0010y\"\u0004\u0008z\u0010{R%\u0010}\u001a\u00020|8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008}\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001f\u0010\u0086\u0001\u001a\u00020e8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0005\u0008\u0085\u0001\u0010g\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/opay/team/home/data/CombinationDataGenerator;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "<init>",
        "()V",
        "Landroid/app/Application;",
        "application",
        "",
        "(Landroid/app/Application;)V",
        "",
        "cityId",
        "()Ljava/lang/String;",
        "cityName",
        "localCode",
        "phone",
        "name",
        "firebaseId",
        "email",
        "avatar",
        "countryCode",
        "token",
        "role",
        "appId",
        "uid",
        "",
        "versionCode",
        "()I",
        "versionName",
        "Lkotlin/Function1;",
        "Landroid/location/Location;",
        "callback",
        "getLastLocation",
        "(Lkotlin/jvm/functions/Function1;)Landroid/location/Location;",
        "",
        "latitude",
        "()D",
        "longitude",
        "advId",
        "deviceId",
        "platform",
        "",
        "isRoot",
        "()Z",
        "isVirtualDevice",
        "Landroid/app/Activity;",
        "activity",
        "Landroidx/lifecycle/LiveData;",
        "asyncMapStatus",
        "(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;",
        "mapInfo",
        "(Landroid/app/Activity;)I",
        "mapInfoContent",
        "isWifi",
        "ipAddress",
        "isDark",
        "channel",
        "fcmToken",
        "transparentLBgLogoId",
        "()Ljava/lang/Integer;",
        "mcc",
        "appsFlyerId",
        "screenResolution",
        "campaign",
        "mediaSource",
        "T",
        "key",
        "t",
        "getValue",
        "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "getOPayCreditMeName",
        "Lteam/opay/swarmfoundation/data/FreeData;",
        "getFreeData",
        "()Lteam/opay/swarmfoundation/data/FreeData;",
        "action",
        "",
        "Lkotlin/Pair;",
        "",
        "values",
        "isSupportAppsflyer",
        "isSupportFirebase",
        "(Ljava/lang/String;[Lkotlin/Pair;ZZ)V",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "getBlackbox",
        "smBlackbox",
        "networkType",
        "",
        "block",
        "attributeMap",
        "(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V",
        "appName",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "Ljava/lang/Class;",
        "switcher",
        "getABSwitcher",
        "(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/swarmfoundation/data/PerformanceTrace;",
        "performanceTrace",
        "(Lteam/opay/swarmfoundation/data/PerformanceTrace;)V",
        "Lteam/opay/swarmfoundation/data/IBytedanceAppLog;",
        "getABAppLogConfig",
        "()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;",
        "userAgent",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Lteam/opay/core/settings/NoClearStorage;",
        "getNoClearStorage",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "Lcom/opay/team/home/HomeSettingsStorage;",
        "homeSettingsStorage",
        "Lcom/opay/team/home/HomeSettingsStorage;",
        "getHomeSettingsStorage",
        "()Lcom/opay/team/home/HomeSettingsStorage;",
        "setHomeSettingsStorage",
        "(Lcom/opay/team/home/HomeSettingsStorage;)V",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/core/settings/SettingsStorage;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "setSettingsStorage",
        "(Lteam/opay/core/settings/SettingsStorage;)V",
        "appLog$delegate",
        "Lid8;",
        "getAppLog",
        "appLog",
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
.field private final appLog$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private homeSettingsStorage:Lcom/opay/team/home/HomeSettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final noClearStorage:Lteam/opay/core/settings/NoClearStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsStorage:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->noClearStorage:Lteam/opay/core/settings/NoClearStorage;

    .line 24
    .line 25
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->homeSettingsStorage:Lcom/opay/team/home/HomeSettingsStorage;

    .line 33
    .line 34
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 42
    .line 43
    new-instance v0, Lkh2;

    .line 44
    .line 45
    invoke-direct {v0}, Lkh2;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->appLog$delegate:Lid8;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/home/data/CombinationDataGenerator;->attributeMap$lambda$6$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final appLog_delegate$lambda$1()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->setDeviceId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->setSSID(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSdkVersion()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->setSdkVersion(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private static final attributeMap$lambda$6(Lcom/opay/team/home/data/CombinationDataGenerator;Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/collections/e;->y(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->role()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "role"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v1, "gender"

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->gender()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "versionName"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->versionName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->versionCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "versionCode"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "gaid"

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->advId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->latitude()D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "latitude"

    .line 67
    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->longitude()D

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "longitude"

    .line 80
    .line 81
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v1, "language"

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->language()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v1, "mcc"

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->mcc()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v1, "deviceId"

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->deviceId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v1, "platform"

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->platform()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v1, "appId"

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->appId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v1, "localCode"

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->localCode()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v1, "cityName"

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->cityName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v1, "model"

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->model()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v1, "brand"

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->brand()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->isVirtualDevice()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "isVirtualDevice"

    .line 174
    .line 175
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const-string v1, "traceId"

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->traceId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v1, "os"

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->os()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const-string v1, "appName"

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->appName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    const-string v1, "avatar"

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->avatar()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-string v1, "token"

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->token()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->appsFlyerId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, "appsflyerId"

    .line 228
    .line 229
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->isWifi()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v3, "isWifi"

    .line 241
    .line 242
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const-string v1, "phone"

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->phone()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    const-string v1, "name"

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->name()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string v1, "email"

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->email()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const-string v1, "mediaSource"

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->mediaSource()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    const-string v1, "campaign"

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->campaign()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    const-string v1, "dma"

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->dma()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    const-string v1, "getBlackbox"

    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const-string v1, "uid"

    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->uid()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    sget-object v1, Lteam/opay/pay/security/SecurityUtils;->a:Lteam/opay/pay/security/SecurityUtils;

    .line 318
    .line 319
    invoke-virtual {v1}, Lteam/opay/pay/security/SecurityUtils;->c()Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    const-string v3, "isNeedEncrypt"

    .line 328
    .line 329
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->appsFlyerId()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    const-string v1, "instanceId"

    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->firebaseId()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    sget-object v1, Lzr6;->a:Lzr6;

    .line 349
    .line 350
    sget-object v2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 351
    .line 352
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Lzr6;->a(Landroid/content/Context;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v2, "supportGMS"

    .line 369
    .line 370
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    sget-object v1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 374
    .line 375
    invoke-virtual {v1, p1}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a(Landroid/content/Context;)Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    const-string v1, "isConnected"

    .line 384
    .line 385
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->getDeviceId()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    const-string v1, "sdid"

    .line 397
    .line 398
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->getSSID()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    const-string p1, "ssid"

    .line 410
    .line 411
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    sget-object p0, Lc03;->a:Lc03;

    .line 415
    .line 416
    invoke-virtual {p0}, Lc03;->c()Z

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    if-eqz p0, :cond_0

    .line 421
    .line 422
    const-string p0, "dark"

    .line 423
    .line 424
    goto :goto_0

    .line 425
    :cond_0
    const-string p0, "light"

    .line 426
    .line 427
    :goto_0
    const-string p1, "themeMode"

    .line 428
    .line 429
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    new-instance p0, Lteam/opay/core/android/arch/AppExecutors;

    .line 433
    .line 434
    invoke-direct {p0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    new-instance p1, Llh2;

    .line 442
    .line 443
    invoke-direct {p1, p2, v0}, Llh2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    .line 444
    .line 445
    .line 446
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    .line 448
    .line 449
    return-void
.end method

.method private static final attributeMap$lambda$6$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/opay/team/home/data/CombinationDataGenerator;Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/home/data/CombinationDataGenerator;->attributeMap$lambda$6(Lcom/opay/team/home/data/CombinationDataGenerator;Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/data/CombinationDataGenerator;->appLog_delegate$lambda$1()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getAppLog()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->appLog$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public varargs action(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/opay/team/home/data/CombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;ZZ)V

    return-void
.end method

.method public action(Ljava/lang/String;[Lkotlin/Pair;ZZ)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlin/Pair;

    invoke-virtual {v0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p4, :cond_1

    .line 2
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    invoke-virtual {v0, p1, p4}, Lx7b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    sget-object p3, Lx7b;->a:Lx7b;

    array-length p4, p2

    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-virtual {p3, p1, p2}, Lx7b;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_2
    return-void
.end method

.method public advId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->homeSettingsStorage:Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/home/HomeSettingsStorage;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public appId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    return-object v0
.end method

.method public appName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->a(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public application(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method public appsFlyerId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public asyncMapStatus(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public attributeMap(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljh2;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1, p2}, Ljh2;-><init>(Lcom/opay/team/home/data/CombinationDataGenerator;Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public avatar()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->G()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public brand()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->b(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public campaign()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/opay/team/invite/AdSetIdConversionDelegate;->Companion:Lcom/opay/team/invite/AdSetIdConversionDelegate$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/invite/AdSetIdConversionDelegate$Companion;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->G(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    return-object v0
.end method

.method public channel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "google_play"

    .line 2
    .line 3
    return-object v0
.end method

.method public cityId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public cityName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public countryCode()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getPhoneRegionalCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "+"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public deviceId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public dma()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->c(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public email()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public fcmToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public firebaseId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->S()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public gender()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->d(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/opay/team/home/data/CombinationDataGenerator;->getAppLog()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "switcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    .line 2
    sget-object v1, Lm;->a:Lm;

    invoke-virtual {v0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->featureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lm;->e(Ljava/lang/String;Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    move-result-object p1

    return-object p1
.end method

.method public getABSwitcher(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "switcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lm;->a:Lm;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    invoke-virtual {v1}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->featureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lm;->f(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getBlackbox()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/risk/RiskHelper;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFreeData()Lteam/opay/swarmfoundation/data/FreeData;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/swarmfoundation/data/FreeData;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-static {v1, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Ldfa;->a:Ldfa;

    .line 20
    .line 21
    invoke-virtual {v3}, Ldfa;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3}, Ldfa;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v0, v1, v4, v2}, Lteam/opay/swarmfoundation/data/FreeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public final getHomeSettingsStorage()Lcom/opay/team/home/HomeSettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->homeSettingsStorage:Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastLocation(Lkotlin/jvm/functions/Function1;)Landroid/location/Location;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/olocation/OLocationManager;->h(Lkotlin/jvm/functions/Function1;)Landroid/location/Location;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "US"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getNoClearStorage()Lteam/opay/core/settings/NoClearStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->noClearStorage:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOPayCreditMeName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opay_credit_name"

    .line 2
    .line 3
    const-string v1, "CreditMe"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/opay/team/home/data/CombinationDataGenerator;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public ipAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isDark()Z
    .locals 1

    .line 1
    sget-object v0, Lc03;->a:Lc03;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc03;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isVirtualDevice()Z
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->H(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isWifi()Z
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->g(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public language()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->e(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public latitude()D
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/olocation/OLocationManager;->g()Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method public localCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public longitude()D
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/olocation/OLocationManager;->g()Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method public mapInfo(Landroid/app/Activity;)I
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public mapInfoContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public mcc()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public mediaSource()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/opay/team/invite/AdSetIdConversionDelegate;->Companion:Lcom/opay/team/invite/AdSetIdConversionDelegate$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/invite/AdSetIdConversionDelegate$Companion;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "organic"

    .line 16
    .line 17
    :cond_1
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->G(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    return-object v0
.end method

.method public model()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->f(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->J()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public networkType()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->e(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public os()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->g(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public performanceTrace(Lteam/opay/swarmfoundation/data/PerformanceTrace;)V
    .locals 1
    .param p1    # Lteam/opay/swarmfoundation/data/PerformanceTrace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "performanceTrace"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public phone()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public platform()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Android"

    .line 2
    .line 3
    return-object v0
.end method

.method public role()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->E()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public screenResolution()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Ljmf;->r(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Ljmf;->q(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "x"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
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
    iput-object p1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setHomeSettingsStorage(Lcom/opay/team/home/HomeSettingsStorage;)V
    .locals 1
    .param p1    # Lcom/opay/team/home/HomeSettingsStorage;
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
    iput-object p1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->homeSettingsStorage:Lcom/opay/team/home/HomeSettingsStorage;

    .line 7
    .line 8
    return-void
.end method

.method public final setSettingsStorage(Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Lteam/opay/core/settings/SettingsStorage;
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
    iput-object p1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 7
    .line 8
    return-void
.end method

.method public smBlackbox()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/risk/RiskHelper;->o()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public token()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public traceId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;->h(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public transparentLBgLogoId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget v0, Lteam/opay/pay/R$drawable;->ic_opay_logo_support:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public userAgent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public versionCode()I
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public versionName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/data/CombinationDataGenerator;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method
