.class public final Lteam/opay/oconfig/OpayRemoteConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "OpayRemoteConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/oconfig/OpayRemoteConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/oconfig/OpayRemoteConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0000H\u0016J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/oconfig/OpayRemoteConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "result",
        "Lorg/json/JSONObject;",
        "init",
        "",
        "init$sdk_release",
        "defaultValue",
        "featureName",
        "",
        "getValue",
        "key",
        "clear",
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
.field public static final Companion:Lteam/opay/oconfig/OpayRemoteConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/oconfig/OpayRemoteConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final interval:I

.field private static latestTime:I


# instance fields
.field private result:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/oconfig/OpayRemoteConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/oconfig/OpayRemoteConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/oconfig/OpayRemoteConfig;->Companion:Lteam/opay/oconfig/OpayRemoteConfig$Companion;

    .line 8
    .line 9
    const v0, 0x927c0

    .line 10
    .line 11
    .line 12
    sput v0, Lteam/opay/oconfig/OpayRemoteConfig;->interval:I

    .line 13
    .line 14
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    new-instance v2, Lsra;

    .line 17
    .line 18
    invoke-direct {v2}, Lsra;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sget v4, Lteam/opay/oconfig/OpayRemoteConfig;->latestTime:I

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    sub-long/2addr v2, v4

    .line 33
    int-to-long v4, v0

    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Lid8;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lteam/opay/oconfig/OpayRemoteConfig;

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/oconfig/OpayRemoteConfig;->init$sdk_release()V

    .line 45
    .line 46
    .line 47
    :cond_0
    sput-object v1, Lteam/opay/oconfig/OpayRemoteConfig;->instance$delegate:Lid8;

    .line 48
    .line 49
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

.method public static synthetic a()Lteam/opay/oconfig/OpayRemoteConfig;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/oconfig/OpayRemoteConfig;->instance_delegate$lambda$0()Lteam/opay/oconfig/OpayRemoteConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oconfig/OpayRemoteConfig;->instance$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final instance_delegate$lambda$0()Lteam/opay/oconfig/OpayRemoteConfig;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/oconfig/OpayRemoteConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/oconfig/OpayRemoteConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lteam/opay/oconfig/OpayRemoteConfig;->latestTime:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/oconfig/OpayRemoteConfig;->result:Lorg/json/JSONObject;

    .line 6
    .line 7
    return-void
.end method

.method public defaultValue()Lorg/json/JSONObject;
    .locals 1
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
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opay_remote_config_key"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/oconfig/OpayRemoteConfig;->getValue()Lteam/opay/oconfig/OpayRemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lteam/opay/oconfig/OpayRemoteConfig;->result:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lteam/opay/oconfig/OpayRemoteConfig;->init$sdk_release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lteam/opay/oconfig/OpayRemoteConfig;->result:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getValue()Lteam/opay/oconfig/OpayRemoteConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/oconfig/OpayRemoteConfig;

    return-object v0
.end method

.method public final init$sdk_release()V
    .locals 2

    .line 1
    sget-object v0, Lm;->a:Lm;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/oconfig/OpayRemoteConfig;->featureName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lm;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lteam/opay/oconfig/OpayRemoteConfig;->result:Lorg/json/JSONObject;

    .line 12
    .line 13
    return-void
.end method
