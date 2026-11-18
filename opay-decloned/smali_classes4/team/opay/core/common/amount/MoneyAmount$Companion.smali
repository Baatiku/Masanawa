.class public final Lteam/opay/core/common/amount/MoneyAmount$Companion;
.super Ljava/lang/Object;
.source "MoneyAmount.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/amount/MoneyAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/core/common/amount/MoneyAmount$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "a",
        "()Lteam/opay/core/common/amount/MoneyAmount;",
        "",
        "serialVersionUID",
        "J",
        "common-base_release"
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
    invoke-direct {p0}, Lteam/opay/core/common/amount/MoneyAmount$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/common/amount/Country;->NIGERIA:Lteam/opay/core/common/amount/Country;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/common/amount/Country;->getCurrency()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "0"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
