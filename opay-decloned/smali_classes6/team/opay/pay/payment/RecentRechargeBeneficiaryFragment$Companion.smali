.class public final Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment$Companion;
.super Ljava/lang/Object;
.source "RecentRechargeBeneficiaryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "from",
        "Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;",
        "a",
        "(Ljava/lang/String;)Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;",
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
    invoke-direct {p0}, Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;->X(Lteam/opay/pay/payment/RecentRechargeBeneficiaryFragment;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
