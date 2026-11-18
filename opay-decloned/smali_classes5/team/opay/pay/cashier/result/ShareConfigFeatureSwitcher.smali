.class public final Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "ShareConfigFeatureSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;,
        Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0000H\u0016R&\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "platforms",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;",
        "Lkotlin/collections/ArrayList;",
        "getPlatforms",
        "()Ljava/util/ArrayList;",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
        "SharePlatform",
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
.field public static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "opay.share.contact"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SMS_PACKAGE_NAME:Ljava/lang/String; = "android.intent.action.SENDTO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android.intent.action.system"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WHATSAPP_PACKAGE_NAME:Ljava/lang/String; = "com.whatsapp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final platforms:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sharePlatforms"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->Companion:Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 5
    .line 6
    const-string v1, "com.whatsapp"

    .line 7
    .line 8
    const-string v2, "whatsapp"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-direct {v0, v2, v3, v1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 16
    .line 17
    const-string v2, "Facebook"

    .line 18
    .line 19
    const-string v4, "com.facebook.katana"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 25
    .line 26
    const-string v4, "sms"

    .line 27
    .line 28
    const-string v5, "android.intent.action.SENDTO"

    .line 29
    .line 30
    invoke-direct {v2, v4, v3, v5}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 34
    .line 35
    const-string v5, "more"

    .line 36
    .line 37
    const-string v6, "android.intent.action.system"

    .line 38
    .line 39
    invoke-direct {v4, v5, v3, v6}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    new-array v3, v3, [Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    aput-object v0, v3, v5

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v3, v0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    aput-object v2, v3, v0

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    aput-object v4, v3, v0

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->platforms:Ljava/util/ArrayList;

    .line 62
    .line 63
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
    const-string v1, "platforms"

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->platforms:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
    const-string v0, "feature_key_platform_share_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlatforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->platforms:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getValue()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    return-object v0
.end method
