.class public final Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;
.super Ljava/lang/Object;
.source "AbstractKycUpgradeActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->addObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;->a:Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/util/EmptyMessage;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;->a:Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "ID_INFO_VERIFY"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/util/EmptyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity$a;->c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
