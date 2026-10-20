.class public final Lteam/opay/swarmfoundation/data/IAppDataGenerator$a;
.super Ljava/lang/Object;
.source "IAppDataGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/swarmfoundation/data/IAppDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lteam/opay/swarmfoundation/data/IAppDataGenerator;)Ljava/lang/String;
    .locals 0
    .param p0    # Lteam/opay/swarmfoundation/data/IAppDataGenerator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "OPay"

    .line 2
    .line 3
    return-object p0
.end method

.method public static b(Lteam/opay/swarmfoundation/data/IAppDataGenerator;)Ljava/lang/String;
    .locals 0
    .param p0    # Lteam/opay/swarmfoundation/data/IAppDataGenerator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->A()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
