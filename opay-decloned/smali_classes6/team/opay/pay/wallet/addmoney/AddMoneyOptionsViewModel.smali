.class public final Lteam/opay/pay/wallet/addmoney/AddMoneyOptionsViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "AddMoneyOptionsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/wallet/addmoney/AddMoneyOptionsViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/pay/home/pay/ServicesDao;",
        "servicesDao",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/core/api/Features;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/home/pay/Service;",
        "b",
        "Landroidx/lifecycle/LiveData;",
        "getServiceInfo",
        "()Landroidx/lifecycle/LiveData;",
        "serviceInfo",
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


# instance fields
.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/pay/ServicesDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "servicesDao"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "features"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceType;->MCASH:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$ServiceType;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/pay/ServicesDao;->c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/AddMoneyOptionsViewModel;->b:Landroidx/lifecycle/LiveData;

    .line 25
    .line 26
    return-void
.end method
