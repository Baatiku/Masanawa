.class public final Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;
.super Ljava/lang/Object;
.source "OutPayResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/result/OutPayResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "resultCode",
        "Lteam/opay/pay/cashier/result/OutPayResultFragment;",
        "a",
        "(I)Lteam/opay/pay/cashier/result/OutPayResultFragment;",
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
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lteam/opay/pay/cashier/result/OutPayResultFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayResultFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->X(I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
