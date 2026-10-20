.class public final Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;
.super Ljava/lang/Object;
.source "ElectricityPaymentFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->addObserver()V
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
.field public final synthetic a:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;->a:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;->a:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 8
    .line 9
    invoke-static {p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->K0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;->a:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 14
    .line 15
    invoke-static {p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->G0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->v(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;->a:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-static {p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->F0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$a;->c(Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
