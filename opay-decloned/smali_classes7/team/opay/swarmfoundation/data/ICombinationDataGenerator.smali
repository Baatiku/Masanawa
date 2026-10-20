.class public interface abstract Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
.super Ljava/lang/Object;
.source "ICombinationDataGenerator.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/data/IFunAttrMap;
.implements Lteam/opay/swarmfoundation/data/IBuildDataGenerator;
.implements Lteam/opay/swarmfoundation/data/IAppDataGenerator;
.implements Lteam/opay/swarmfoundation/data/ICityDataGenerator;
.implements Lteam/opay/swarmfoundation/data/IUserDataGenerator;
.implements Lteam/opay/swarmfoundation/data/IUserLocationGenerator;
.implements Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;
.implements Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/swarmfoundation/data/ICombinationDataGenerator$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "Lteam/opay/swarmfoundation/data/IFunAttrMap;",
        "Lteam/opay/swarmfoundation/data/IBuildDataGenerator;",
        "Lteam/opay/swarmfoundation/data/IAppDataGenerator;",
        "Lteam/opay/swarmfoundation/data/ICityDataGenerator;",
        "Lteam/opay/swarmfoundation/data/IUserDataGenerator;",
        "Lteam/opay/swarmfoundation/data/IUserLocationGenerator;",
        "Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;",
        "Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;",
        "",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public varargs abstract synthetic action(Ljava/lang/String;[Lkotlin/Pair;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract synthetic action(Ljava/lang/String;[Lkotlin/Pair;ZZ)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract synthetic getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract synthetic getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract synthetic getABSwitcher(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract synthetic getFreeData()Lteam/opay/swarmfoundation/data/FreeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract synthetic getOPayCreditMeName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract synthetic getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract synthetic performanceTrace(Lteam/opay/swarmfoundation/data/PerformanceTrace;)V
    .param p1    # Lteam/opay/swarmfoundation/data/PerformanceTrace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
