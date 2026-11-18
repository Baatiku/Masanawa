.class public final Lteam/opay/business/core/bank/BankInfo$Companion;
.super Ljava/lang/Object;
.source "BankInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/core/bank/BankInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/business/core/bank/BankInfo$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/core/bank/BankInfo;",
        "a",
        "()Lteam/opay/business/core/bank/BankInfo;",
        "business-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/core/bank/BankInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/business/core/bank/BankInfo;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v14, Lteam/opay/business/core/bank/BankInfo;

    .line 2
    .line 3
    const/16 v12, 0x3fc

    .line 4
    .line 5
    const/4 v13, 0x0

    .line 6
    const-string v1, "100004"

    .line 7
    .line 8
    const-string v2, "OPay"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const-string v11, "coinsTransfer"

    .line 19
    .line 20
    move-object v0, v14

    .line 21
    invoke-direct/range {v0 .. v13}, Lteam/opay/business/core/bank/BankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    return-object v14
.end method
