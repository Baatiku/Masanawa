.class public final Lteam/opay/pay/settings/NewCardFragment$Companion;
.super Ljava/lang/Object;
.source "NewCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/settings/NewCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/settings/NewCardFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "currencyAmount",
        "Lkotlin/Function1;",
        "",
        "",
        "addSuccess",
        "Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;",
        "createOrderBlock",
        "Lteam/opay/pay/settings/NewCardFragment;",
        "a",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/settings/NewCardFragment;",
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
    invoke-direct {p0}, Lteam/opay/pay/settings/NewCardFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/settings/NewCardFragment;
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/home/event/BindCardOrAccountCreateRechargeOrderEvent;",
            "Lkotlin/Unit;",
            ">;)",
            "Lteam/opay/pay/settings/NewCardFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "addSuccess"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createOrderBlock"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/settings/NewCardFragment;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/settings/NewCardFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->f0(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p2}, Lteam/opay/pay/settings/NewCardFragment;->A0(Lteam/opay/pay/settings/NewCardFragment;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p3}, Lteam/opay/pay/settings/NewCardFragment;->B0(Lteam/opay/pay/settings/NewCardFragment;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
